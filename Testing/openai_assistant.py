import openai


run = openai.beta.threads.create_and_run(
  assistant_id="asst_IgmpQTah3ZfPHCVZjTqAY8Kv",
  thread={
    "messages": [
        {
          "role": "user", 
          "content": "Explain deep learning to a 5 year old."
        }
    ]
  }
)

print(run)
