import os
import json

def find_and_write_bytecode(base_path, output_folder):
    # Ensure the output folder exists
    if not os.path.exists(output_folder):
        os.makedirs(output_folder)
    
    # Walk through the directory
    counter = 0
    for dirpath, dirnames, filenames in os.walk(base_path):
        for file in filenames:
            if file.endswith('.json'):
                # Construct the full file path
                full_path = os.path.join(dirpath, file)
                print(f"Attempting to read from {full_path}")  # Debug print
                try:
                    with open(full_path, 'r') as json_file:
                        data = json.load(json_file)
                        if 'deployedBytecode' in data:
                            bytecode = data['deployedBytecode']
                            # Construct the output file name and path
                            rel_path = os.path.relpath(full_path, base_path)
                            output_filename = f"{rel_path}.hex".replace('/', '_').replace('\\', '_')
                            output_path = os.path.join(output_folder, output_filename)
                            print(f"Writing to {output_path}")  
                            # Write the bytecode to the new file
                            with open(output_path, 'w') as output_file:
                                output_file.write(bytecode)
                                counter +=1 
                except (json.JSONDecodeError, IOError) as e:
                    print(f"Error processing {full_path}: {e}")
    print (counter)

base_path_example = '/Users/malek/Documents/smartbugs-curated/artifacts/contracts/dataset'
output_folder_example = '/Users/malek/Documents/smartbugs-curated/bytecodes1'

# find_and_write_bytecode(base_path_example, output_folder_example)
# find_and_write_bytecode('/Users/malek/Documents/smartbugs-curated/artifacts/contracts/dataset', '/Users/malek/Documents/smartbugs-curated/bytecodes')
find_and_write_bytecode(base_path_example, output_folder_example)