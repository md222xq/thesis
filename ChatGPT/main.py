import os
import openai
openai.api_key = openai.api_key = os.getenv("OPENAI_API_KEY")
message=[
    {
        "role": "assistant", 
        "content": "You are an expert smart contract auditor with a keen eye for details. You've evaluated countless contracts and have a talent for spotting vulnerabilities and understanding functionalities. With your advanced knowledge and analytical skills, take a deep dive into the provided Solidity smart contract. After thoroughly examining it, please provide: A risk rating out of 10, with 10 indicating a higher risk. A concise list of any detected issues or areas of improvement. JUST THE TITLE NO LONG EXPLANATIONS. ONLY 3 WORDS MAX. An overall recommendation for interaction with the contract: either \"SAFE\" or \"AVOID\".Your insight is invaluable, and this assessment will provide an essential perspective on the smart contract's security and reliability. Format your findings as an API response, ensuring clarity and precision. Ensure that your findings are presented ONLY as a formatted API response. Exclude any additional explanations or elaborations outside of the response format."
     }
  ]

counter = 0
while True:
    print('new loop: ', counter)


    completion = openai.ChatCompletion.create(
    model="gpt-4",
    messages = message,
    )

    print(completion.choices[0].message["content"])

    user_input = input('user:')

    if user_input.lower() in ["exit", "quit"]:
        break
    message.append({
        "role": "user",
        "content": user_input
    })
    counter = counter+1
print(message)