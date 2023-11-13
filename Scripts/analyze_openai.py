import os
import openai
import json
from datetime import datetime
from pathlib import Path
import time
import threading
import concurrent.futures

openai.api_key = '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'


# folder_path = './Contracts/Decompiled/Dedaub/SmartBugs'
folder_path = './Contracts/Decompiled/Heimdall-rs/SmartBugs'
# folder_path = './Contracts/Decompiled/test/'

gpt_model = "gpt-3.5-turbo-16k"
# gpt_model = "gpt-4"
# gpt_model = "gpt-4-1106-preview"

parts = folder_path.split('/')
test_type = parts[3] if len(parts) > 3 else None

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
                # "content": "you analyze smart contracts for vulnrabilities and respond in json format with Rating: SAFE or VULNERABLE based on the smart contract. your response only contains the rating."
                "content": "You are a blockchain smart contract analyzer. You will analyze the given smart contracts for vulnerabilities and respond in json with Rating: SAFE or VULNERABLE, you will also respond with ONE vulnerability category such as \"Reentrancy\",\"unchecked_low_level_calls\", arithmetic_integer_overflow, denial_of_service, access_control, bad_randomness, front_running, short_address, time_manipulation, other."
            },
            {
                "role": "user",
                "content": solidity_code
            }
        ]


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
            # print(output)
        if output == "Error, You exceeded your current quota, please check your plan and billing details.":
            quit()
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
pass

# Main script for setting up output and processing files
output_dir = Path('test_results')
output_dir.mkdir(exist_ok=True)

current_time = datetime.now().strftime("%Y%m%d_%H%M%S")
output_filename = output_dir / f'Test_{current_time}_Category_{test_type}_{gpt_model}.json'
analysis_results = []
loop = 1

# for file in os.listdir(folder_path):
#     if file.endswith(".sol"):
#         file_path = os.path.join(folder_path, file)

#         if loop > 170:  ######### If test fails change loop
#             print(f'Running Loop: {loop} | {file_path}')
#             result = analyze_solidity_file(file_path, gpt_model, loop)
#             analysis_results.append(result)
#             with open(output_filename, 'w', encoding='utf-8') as output_file:
#                 json.dump(analysis_results, output_file, indent=2)
#             time.sleep(4)
#             print(f"finished running loop: {loop}" )
#             print('\n')
#         loop += 1



number_of_files = 0
for file in os.listdir(folder_path):
    if file.endswith(".sol"):
        number_of_files +=1 


for file in os.listdir(folder_path):
    if file.endswith(".sol"):

        file_path = os.path.join(folder_path, file)
        if loop > 79:
            print(f'Running Loop: {loop} | {file_path}')
            with concurrent.futures.ThreadPoolExecutor() as executor:
                future = executor.submit(analyze_solidity_file, file_path,gpt_model, loop)
                try:
                    result = future.result(timeout=20)
                    analysis_results.append(result)
                    with open(output_filename, 'w', encoding='utf-8') as output_file:
                        json.dump(analysis_results, output_file, indent=2)
                except concurrent.futures.TimeoutError:
                    print(f"Analysis for {file_path} timed out, retrying...")
                    continue  # This will skip the current iteration and retry
                # time.sleep(10)
                print(f"Finished running loop: {loop}/{number_of_files}")
                print('\n')
        loop += 1


# Save the results to the output file
with open(output_filename, 'w', encoding='utf-8') as output_file:
    json.dump(analysis_results, output_file, indent=2)

print(f"Analysis results saved to {output_filename}")
