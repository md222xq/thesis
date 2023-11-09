import subprocess
import os
import shutil
from pathlib import Path
import time

folder_path = "/Users/malek/Documents/Thesis/Contracts/Compiled/SmartBugs_Bytecode"

for hex_file in Path(folder_path).glob('*.hex'):
    try:
        output_file_path = "/Users/malek/Documents/Thesis/output/local/decompiled.sol"  
        # time.sleep(1)

        input_file_path = str(hex_file)
        print('start: ',input_file_path)
        new_file_path = "Contracts/Decompiled/Heimdall-rs/SmartBugs/Heimdall_" + hex_file.name + ".sol"
        # time.sleep(1)
        print('Running')

        # Execute the heimdall decompile command in the terminal.
        decompile_command = f"heimdall decompile {input_file_path} --include-sol -d -vvvv"
        print(decompile_command)
        subprocess.run(decompile_command, shell=True, check=True)
        # Copy the content from the output file to the new file path and rename it.
        shutil.copy(output_file_path, new_file_path)
        print('Done')
        os.remove(output_file_path)

    except Exception as e:
        print("error: ", e)
