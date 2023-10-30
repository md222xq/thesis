
import os
import openai
import json
from datetime import datetime
from pathlib import Path


openai.api_key = os.getenv("OPENAI_API_KEY")
# folder_path = './Contracts/Decompiled/Dedaub'
folder_path = './Contracts/SourceCode/'
# model = "gpt-3.5-turbo-16k"
gpt_model = "gpt-4"


from bardapi import Bard
from bardapi import BardCookies

cookie_dict = {
    "__Secure-1PSID": "cQhH0h-3q2Uh-QwhSTWrx5CRSkvUvXDNDRhS8RS6sLnxwblwwbunQsB9T0OGH56hG2UT4w.",
    "__Secure-1PSIDTS":"sidts-CjEBNiGH7kMjO7lIZDzIgjCBynu_0-8mRyE-jEP6nXEJpEJoQuo_xd4AF5oB-qaqTRweEAA",
    "__Secure-1PSIDCC": "ACA-OxO_aSFvra1_PUIL_Ib2a-NajrXURdgFnv-Uicaar9j0jh7Hb5bfMcJVQQpYwb4p39EkuSo",
    # Any cookie values you want to pass session object.
}
bard = BardCookies(cookie_dict=cookie_dict)

def analyze_solidity_file(file_path, output_file, gpt_model):
    with open(file_path, 'r', encoding='utf-8') as f:
        solidity_code = f.read()

    message = [
        {
            "role": "system",
            "content": "you analyze smart contracts and respond in json format with Rating: SAFE or AVOID based on the smart contract. your response only contains the rating and reason. Only respond with json"
        },
        {
            "role": "user",
            "content": solidity_code
        }
    ]
    try:
        response = bard.get_answer(str(message))['content']

        try:
            analysis = json.loads(response)
             
        except json.JSONDecodeError as e:
            analysis = {"raw_response": response}
            print(f"Error parsing JSON for {file_path}: {str(e)}")


        output_data = {
                "file_path": file_path,
                "analysis": analysis
            }
        json.dump(output_data, output_file, indent=2)
        output_file.write(',\n')

    
    except:
        print('error')

output_dir = Path('test_results')
output_dir.mkdir(exist_ok=True)  # Create the output directory if it doesn't exist

current_time = datetime.now().strftime("%Y%m%d_%H%M%S")
output_filename = output_dir / f'Test_{current_time}_bard.json'  # Save the file in the output directory

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
