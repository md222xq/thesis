
import os
import openai
import json
from datetime import datetime

openai.api_key = os.getenv("OPENAI_API_KEY")
folder_path = './Contracts/'

def analyze_solidity_file(file_path, output_file):
    with open(file_path, 'r', encoding='utf-8') as f:
        solidity_code = f.read()

    message = [
        {
            "role": "system",
            "content": "you analyze smart contracts and respond in json format with Rating: SAFE or AVOID based on the smart contract. your response only contains the rating and reason."
        },
        {
            "role": "user",
            "content": solidity_code
        }
    ]

    response = openai.ChatCompletion.create(
        model="gpt-3.5-turbo-16k",
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
        output_data = {
            "file_path": file_path,
            "analysis": analysis
        }
        json.dump(output_data, output_file, indent=2)
        output_file.write(',\n') 
    except json.JSONDecodeError as e:
        print(f"Error parsing JSON for {file_path}: {str(e)}")

current_time = datetime.now().strftime("%Y%m%d_%H%M%S")
output_filename = f'Test_{current_time}.json'

with open(output_filename, 'w', encoding='utf-8') as output_file:
    output_file.write('[\n') 
    for root, dirs, files in os.walk(folder_path):
        for file in files:
            if file.endswith(".sol"):
                file_path = os.path.join(root, file)
                print(file_path)
                # analyze_solidity_file(file_path, output_file)
    output_file.write('\n]')  

print(f"Analysis results saved to {output_filename}")
