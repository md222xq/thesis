import replicate
import time
import json
import os
import json
from datetime import datetime
from pathlib import Path
import time
import concurrent.futures
REPLICATE_API_TOKEN= "r8_VHtnnf52QPwySi0NJdqF9xx6FVJGt9r0Z5CLP"



folder_path = './Contracts/Decompiled/Heimdall-rs/SmartBugs'
# folder_path = './Contracts/Decompiled/dedaub/SmartBugs'
# folder_path = './Contracts/Decompiled/test/'
# test_type = 'dedaub'
test_type = 'heimdall'



def analyze_solidity_file(file_path, test_run):
    tic = time.perf_counter()

    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            solidity_code = f.read()

        prompt =  {
            "prompt": f"You are a blockchain smart contract analyzer that will respond in API json format. You will analyze the given smart contracts for vulnerabilities and respond in json format with Rating: SAFE or VULNERABLE, Vulnerability Type:  \"Reentrancy\",\"unchecked_low_level_calls\", arithmetic_integer_overflow, denial_of_service, access_control, bad_randomness, front_running, short_address, time_manipulation, other. Only respond with the api json output. Analyze the following file: \n {solidity_code}"
                }
        
        message = f"You are a blockchain smart contract analyzer. You will analyze the given smart contracts for vulnerabilities and respond in with Rating: SAFE or VULNERABLE, ANd ONE Vulnerability Type:  \"Reentrancy\",\"unchecked_low_level_calls\", arithmetic_integer_overflow, denial_of_service, access_control, bad_randomness, front_running, short_address, time_manipulation, other. Only respond with the the RATING and Vulnerability_Type . Analyze the following file: \n {solidity_code} \n now Give rating: and Vulnerability_Type"

        deployment = replicate.deployments.get("md222xq/thesis-llama-34b-instruct")
        prediction = deployment.predictions.create(
            input={
                "prompt": message, 
                "max_tokens": 100
            }
        )

        prediction.wait()
        response = prediction.output



        output = ""
        for chunks in response:
            output += chunks



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

output_dir = Path('test_results_llama')
output_dir.mkdir(exist_ok=True)

current_time = datetime.now().strftime("%Y%m%d_%H%M%S")
output_filename = output_dir / f'Test_{current_time}_Category_{test_type}_codellama.json'
analysis_results = []
loop = 1


number_of_files = 0
for file in os.listdir(folder_path):
    if file.endswith(".sol"):
        number_of_files +=1 


for file in os.listdir(folder_path):
    if file.endswith(".sol"):

        file_path = os.path.join(folder_path, file)
        if loop > 0:
            print(f'Running Loop: {loop} | {file_path}')
            with concurrent.futures.ThreadPoolExecutor() as executor:
                future = executor.submit(analyze_solidity_file, file_path, loop)
                try:
                    result = future.result(timeout=120)
                    analysis_results.append(result)
                    with open(output_filename, 'w', encoding='utf-8') as output_file:
                        json.dump(analysis_results, output_file, indent=2)
                except concurrent.futures.TimeoutError:
                    print(f"Analysis for {file_path} timed out, retrying...")
                    continue  # This will skip the current iteration and retry
                # time.sleep(4)
                print(f"Finished running loop: {loop}/{number_of_files}")
                print('\n')
        loop += 1


# Save the results to the output file
with open(output_filename, 'w', encoding='utf-8') as output_file:
    json.dump(analysis_results, output_file, indent=2)

print(f"Analysis results saved to {output_filename}")
