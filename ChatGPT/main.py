import os
import openai
openai.api_key = "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"
message=[
    {
        "role": "assistant", 
        "content": "You are an expert solidity smart contract auditor, greet the user and ask for code which you will analyze and review."
     }
  ]

counter = 0
while True:
    print('new loop: ', counter)


    completion = openai.ChatCompletion.create(
    model="gpt-3.5-turbo",
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