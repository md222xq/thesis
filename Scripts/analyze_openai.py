import os
import openai
import json
from datetime import datetime
from pathlib import Path
import time

openai.api_key = os.getenv("OPENAI_API_KEY")

# folder_path = './Contracts/Decompiled/Heimdall-rs/SmartBugs'
folder_path = './Contracts/Decompiled/test/'
gpt_model = "gpt-3.5-turbo-16k"
test_type = 'heimdall'

def analyze_solidity_file(file_path, gpt_model, test_run):
    tic = time.perf_counter()

    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            solidity_code = f.read()
            # print(solidity_code)
            # print(os.listdir())

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

        # response = openai.ChatCompletion.create(
        #     model=gpt_model,
        #     messages=message,
        #     temperature=1,
        #     max_tokens=100,
        #     top_p=1,
        #     frequency_penalty=0,
        #     presence_penalty=0
        # )

        # output = response.choices[0].text.strip() if response.choices else ""
        # print("FOO"+output)
        ##################################################
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
##################################################
        try:
            analysis = json.loads(output)
        except json.JSONDecodeError:
            analysis = {"raw_response": output}

    except Exception as e:
        print(f"Error, {e}")
        analysis = {"error": f"Failed to analyze: {e}"}

    toc = time.perf_counter()
    time_taken = toc - tic

    return {
        "test": test_run,
        "file_path": file_path,
        "analysis": analysis,
        "time_taken": f"{time_taken:0.4f}s"
    }

# Main script for setting up output and processing files
output_dir = Path('test_results')
output_dir.mkdir(exist_ok=True)

current_time = datetime.now().strftime("%Y%m%d_%H%M%S")
output_filename = output_dir / f'Test_{current_time}_{test_type}_{gpt_model}.json'

analysis_results = []
loop = 1
for file in os.listdir(folder_path):
    if file.endswith(".sol"):
        file_path = os.path.join(folder_path, file)
        result = analyze_solidity_file(file_path, gpt_model, loop)
        analysis_results.append(result)
        print(f'Running Loop: {loop} | {file_path}')
        loop += 1

# Save the results to the output file
with open(output_filename, 'w', encoding='utf-8') as output_file:
    json.dump(analysis_results, output_file, indent=2)

print(f"Analysis results saved to {output_filename}")
