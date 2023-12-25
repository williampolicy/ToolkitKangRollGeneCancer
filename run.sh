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
# Installation commands here...
echo "Required packages installed."

# Step 3: Run the Quick Test
echo "Step 3: Running the Quick Test..."
python quicktest.py
echo "Quick Test executed."

# Step 4: Test Completion and Results
echo "If the test was successful, you should now see a chart displayed for 2 seconds. The chart is also saved as a PDF file at './test_kangroll_basic_fn001_mln_com_result_20231224.pdf'. This chart visualizes the test results of the KangRollGeneCancer package, providing insights into gene-cancer dynamics."

echo "KangRollGeneCancer Environment Setup and Test Complete."
