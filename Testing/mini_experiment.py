
import os
import openai
import json
from datetime import datetime
from datetime import datetime
from pathlib import Path

openai.api_key = os.getenv("OPENAI_API_KEY")
# folder_path = './Contracts/Decompiled/Dedaub'
folder_path = './Contracts/Decompiled/Heimdall-rs/'
gpt_model = "gpt-3.5-turbo-16k"
# gpt_model = "gpt-4"






def analyze_solidity_file(file_path, output_file, gpt_model):
    with open(file_path, 'r', encoding='utf-8') as f:
        solidity_code = f.read()

    message = [
        {
            "role": "system",
            "content": "you analyze smart contracts and respond in json format with Rating: SAFE or AVOID based on the smart contract. your response only contains the rating."
        },
        {
            "role": "user",
            "content": solidity_code
        }
    ]
    try:

        response = openai.ChatCompletion.create(
            model=gpt_model,
            messages=message,
            temperature=1,
            max_tokens=100,
            top_p=1,
            frequency_penalty=0,
            presence_penalty=0,
            stream=True
        )

    
        output = ""
        for chunk in response:
            content = chunk.choices[0].delta.get('content', '')
            output += content

        try:
            analysis = json.loads(output)
             
        except json.JSONDecodeError as e:
            analysis = {"raw_response": output}
            print(f"Error parsing JSON for {file_path}: {str(e)}")


        output_data = {
                "file_path": file_path,
                "analysis": analysis
            }
        json.dump(output_data, output_file, indent=2)
        output_file.write(',\n')

    
    except Exception as e:
        print(f"An error occurred while processing {file_path}: {str(e)}")
        output_data = {
                "file_path": file_path,
                "analysis": "FAILED to analyze, {e}"
            }
        json.dump(output_data, output_file, indent=2)
        output_file.write(',\n')

output_dir = Path('test_results')
output_dir.mkdir(exist_ok=True)  # Create the output directory if it doesn't exist

current_time = datetime.now().strftime("%Y%m%d_%H%M%S")
output_filename = output_dir / f'Test_{current_time}_{gpt_model}.json'  # Save the file in the output directory

with open(output_filename, 'w', encoding='utf-8') as output_file:
    output_file.write('[\n') 
    # for root, dirs, files in os.walk(folder_path):
    for file in os.listdir(folder_path):
        if file.endswith(".sol"):
            file_path = os.path.join(folder_path, file)
            print(file_path)
            analyze_solidity_file(file_path, output_file, gpt_model)
    output_file.write('\n]')  

print(f"Analysis results saved to {output_filename}")
