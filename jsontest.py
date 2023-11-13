import json

# The input JSON data
file = '/Users/malek/Documents/Thesis/test_results/Test_20231110_234544_Category_dedaub_gpt-4-1106-preview.json'
import json
from pathlib import Path

# Define a function to clean the raw JSON response in the data
def clean_raw_json_response(json_data):
    for entry in json_data:
        print(entry)
        raw_response = entry['analysis']['raw_response']
        # Strip the markdown code block syntax and trim whitespaces
        clean_json_string = raw_response.strip('```json\n').strip()
        # Convert the string back to a JSON object
        json_object = json.loads(clean_json_string)
        # Update the 'analysis' key with the cleaned JSON object
        entry['analysis'] = json_object
    return json_data

# Function to read a JSON file, clean the raw response, and output to a new file
def process_json_file(input_path, output_path):
    # Read the JSON file
    with open(input_path, 'r', encoding='utf-8') as file:
        data = json.load(file)
    
    # Clean the raw JSON response in the data
    cleaned_data = clean_raw_json_response(data)

    # Write the cleaned data to the output file
    with open(output_path, 'w', encoding='utf-8') as file:
        json.dump(cleaned_data, file, indent=2)

# Example usage:
input_json_path = '/Users/malek/Documents/Thesis/test_results/Test_20231110_234544_Category_dedaub_gpt-4-1106-preview.json'
output_json_path = '/Users/malek/Documents/Thesis/test_results/Test_20231110_234544_Category_dedaub_gpt-4-1106-preview_cleaned.json'

# Call the function to process the file
process_json_file(input_json_path, output_json_path)
