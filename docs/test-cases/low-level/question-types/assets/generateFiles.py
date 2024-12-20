
import os

# Create 'generated_files' directory
os.makedirs("generated_files", exist_ok=True)

# Generate 26 empty files named file_(number).txt
for i in range(1, 27):
    with open(f"generated_files/file_{i}.txt", 'w') as f:
        f.write(f"Content {i}")
