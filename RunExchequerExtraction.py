import os
import subprocess
import time

# Get the directory of the current script
script_dir = os.path.dirname(os.path.abspath(__file__))

# Find all Python scripts starting with _ in the same directory
scripts = sorted([f for f in os.listdir(script_dir) if f.startswith("_") and f.endswith(".py")])

# Log file for errors
log_file = os.path.join(script_dir, "execution_log.txt")

with open(log_file, "w") as log:
    log.write("Execution Log:\n\n")
    
    for script in scripts:
        script_path = os.path.join(script_dir, script)
        print(f"Executing: {script}")
        start_time = time.time()
        
        try:
            result = subprocess.run(["python", script_path], capture_output=True, text=True, check=True)
            execution_time = time.time() - start_time
            print(f"Finished {script} in {execution_time:.2f} seconds\n")
            
            # Log success
            log.write(f"{script} executed successfully in {execution_time:.2f} seconds\n")
            log.write(f"Output:\n{result.stdout}\n")
        
        except subprocess.CalledProcessError as e:
            execution_time = time.time() - start_time
            print(f"Error executing {script}. Check log for details.\n")
            
            # Log errors
            log.write(f"{script} failed after {execution_time:.2f} seconds\n")
            log.write(f"Error:\n{e.stderr}\n")
            
print("All scripts executed. Check execution_log.txt for details.")
