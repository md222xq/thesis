
import os
import openai
import json
from datetime import datetime
from pathlib import Path
from bardapi import Bard
from bardapi import BardCookies
import time

openai.api_key = os.getenv("OPENAI_API_KEY")
# folder_path = './Contracts/Decompiled/Dedaub'
folder_path = './Contracts/SourceCode/'
# model = "gpt-3.5-turbo-16k"
gpt_model = "gpt-4"




cookie_dict = {
    "__Secure-1PSID": "cghH0hAdLp48KVhk1Wf4n4hNlvQstMKtqPYpDSUvzYAPJfSPCmpSSccZbVuUgTnYgMrdVg.",
    "__Secure-1PSIDCC": "ACA-OxOwuf6stKaN-1TaS4GN6PPjADIb49TmxvGIqb7iCKN5xAPm9_AMOcyt23IdWQDpJxA7lhAd",
    "__Secure-1PSIDTS":"sidts-CjEBNiGH7t34ED5B-xfhzZ8DnqMlp55JeNJm1n6l9ug5O54ULG2FmaSz9XyOZBclRD0yEAA",
    # Any cookie values you want to pass session object.
}


    



folder_path = './Contracts/Decompiled/Dedaub/SmartBugs'
# folder_path = './Contracts/Decompiled/test/'
# gpt_model = "gpt-3.5-turbo-16k"
# gpt_model = "gpt-4"
test_type = 'dedaub'

def analyze_solidity_file(file_path, test_run):
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
                "content": "You are a blockchain smart contract analyzer. You will analyze the given smart contracts for vulnerabilities and respond only with Rating SAFE or VULNERABLE, you will also respond with the vulnerability category such as \"Reentrancy\",\"unchecked_low_level_calls\", arithmetic_integer_overflow, denial_of_service, access_control, bad_randomness, front_running, short_address, time_manipulation, other. You DO NOT respond with anything other than the rating and category. Do not provide an explanation. do not provide further details. after responding with the rating and category you end the message."
            },
            {
                "role": "user",
                "content": solidity_code
            }
        ]

        try:
            bard = BardCookies(cookie_dict=cookie_dict)
            response = bard.get_answer(str(message))['content']
        except Exception as e:
            print(f"Failed with error: {e}")

        print(response)
        try:
            analysis = json.loads(response)
        except json.JSONDecodeError:
            analysis = {"raw_response": response}

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
output_dir = Path('test_results_bard')
output_dir.mkdir(exist_ok=True)

current_time = datetime.now().strftime("%Y%m%d_%H%M%S")
output_filename = output_dir / f'Test_{current_time}_{test_type}_BARD.json'
analysis_results = []
loop = 1
for file in os.listdir(folder_path):
    if file.endswith(".sol"):
        file_path = os.path.join(folder_path, file)
        if loop > 103:
            print(f'Running Loop: {loop} | {file_path}')
            result = analyze_solidity_file(file_path, loop)
            analysis_results.append(result)
            with open(output_filename, 'w', encoding='utf-8') as output_file:
                json.dump(analysis_results, output_file, indent=2)
            time.sleep(4)
            print(f"finished running loop: {loop}" )
            print('\n')
        loop += 1

# Save the results to the output file
with open(output_filename, 'w', encoding='utf-8') as output_file:
    json.dump(analysis_results, output_file, indent=2)

print(f"Analysis results saved to {output_filename}")
