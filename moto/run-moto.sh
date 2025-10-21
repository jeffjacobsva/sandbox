#!/bin/bash

# Tested under gitbash with non-admin user
#
# Create a virtual environment in the current directory
py -m venv moto_env

# Activate the virtual environment
source moto_env/Scripts/activate

python -m pip install --upgrade pip

# Install moto with all extras
python -m pip install moto[all] flask flask_cors

# Set the LOG_LEVEL environment variable for debugging (optional)
export LOG_LEVEL=DEBUG

# Run moto_server on port 4566
moto_server -p 4566

# Deactivate the virtual environment when done (optional)
deactivate

