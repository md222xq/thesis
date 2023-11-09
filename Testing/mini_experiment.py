
import os
import openai
import json
from datetime import datetime
from datetime import datetime
from pathlib import Path
import time

openai.api_key = os.getenv("OPENAI_API_KEY")
# folder_path = './Contracts/Decompiled/Dedaub'
folder_path = './Contracts/Decompiled/Heimdall-rs/SmartBugs'
gpt_model = "gpt-3.5-turbo-16k"
# gpt_model = "gpt-4"

test_type = 'heimdall'
# test_type = 'dedaub'
# test_type = 'source'





def analyze_solidity_file(file_path, output_file, gpt_model, test_run):
    with open(file_path, 'r', encoding='utf-8') as f:
        solidity_code = f.read()

    message = [
        {
            "role": "system",
            "content": "you analyze smart contracts for vulnrabilities and respond in json format with Rating: SAFE or Vulnrabased based on the smart contract. your response only contains the rating."
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
            print(content)
            output += content

        try:
            analysis = json.loads(output)
             
        except json.JSONDecodeError as e:
            analysis = {"raw_response": output}
            print(f"Error parsing JSON for {file_path}: {str(e)}")


        output_data = {
                "test": test_run,
                "file_path": file_path,
                "analysis": analysis,
                "time_taken": time_taken
            }
        json.dump(output_data, output_file, indent=2)
        output_file.write(',\n')

    
    except Exception as e:
        print(f"An error occurred while processing {file_path}: {str(e)}")
        output_data = {
                "test": test_run,
                "file_path": file_path,
                "analysis": "FAILED to analyze, {e}"
            }
        json.dump(output_data, output_file, indent=2)
        output_file.write(',\n')





output_dir = Path('test_results')
output_dir.mkdir(exist_ok=True)  # Create the output directory if it doesn't exist

current_time = datetime.now().strftime("%Y%m%d_%H%M%S")
output_filename = output_dir / f'Test_{current_time}_{test_type}_{gpt_model}.json'  # Save the file in the output directory

tic = time.perf_counter()

with open(output_filename, 'w', encoding='utf-8') as output_file:
    output_file.write('[\n') 
    # for root, dirs, files in os.walk(folder_path):
    loop =1
    for file in os.listdir(folder_path):
        if file.endswith(".sol"):
            file_path = os.path.join(folder_path, file)
            print(file_path)
            # print(openai.api_key)
            analyze_solidity_file(file_path, output_file, gpt_model, loop)
            # time.sleep(3)
            print('Running Loop: '+ str(loop) +" | "+ file_path)
            loop +=1

    output_file.write('\n]')  

print(f"Analysis results saved to {output_filename}")
