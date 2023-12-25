#!/bin/bash

# KangRollGeneCancer Environment Setup Script

echo "Starting KangRollGeneCancer Environment Setup..."

# Step 1: Create and activate a Python virtual environment
echo "Step 1: Creating a Python virtual environment named tk_kangroll_env..."
python3 -m venv ./tk_kangroll_env
echo "Virtual environment created."

echo "Activating the virtual environment..."
source ./tk_kangroll_env/bin/activate
echo "Virtual environment activated."

# Customizing the command prompt to show the active virtual environment
export PS1="(tk_kangroll_env) \[\033[01;32m\]\W\[\033[00m\]\$ "
echo "Command prompt customized to show the active virtual environment."

# Step 2: Install required packages
echo "Step 2: Installing required packages..."

# List the contents of the current directory for verification
echo "Listing contents of the current directory..."
ls -al

# Install the required packages from requirements.txt
# Uncomment the next line if you have a requirements.txt file
echo "Installing packages from requirements.txt..."
pip install -r requirements.txt
echo "Required packages installed."

echo "KangRollGeneCancer Environment Setup Complete."


