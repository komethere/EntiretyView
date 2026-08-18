#!/bin/bash
export LANG=en_US.UTF-8

echo "LOGO"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "@github.com/komethere/EntiretyView"
echo "@holyarii & @komethere"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "Loading..."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# Use a clean variable name (env_choice) so it doesn't conflict with your later start_choice
read -p "Would you like to install in a Virtual Environment? (Y/N): " env_choice
env_choice=$(echo "$env_choice" | tr '[:lower:]' '[:upper:]')

if [ "$env_choice" = "Y" ]; then
    # Create the venv inside the project folder
    python3 -m venv ./.venv
    # Activate the environment
    source ./.venv/bin/activate
    # Upgrade pip inside the environment
    python -m pip install --upgrade pip
    # Install dependencies (added missing -r flag)
    pip install -r ./requirements.txt
    echo "Successfully installed all dependencies in the Virtual Environment!"
else
    # Global installation
    python3 -m pip install --upgrade pip
    python3 -m pip install -r ./requirements.txt
    echo "Successfully installed all dependencies globally!"
fi

# Program start 
echo ""
read -p "Would you like to start PROGRAM? (Y/N): " start_choice
start_choice=$(echo "$start_choice" | tr '[:lower:]' '[:upper:]')

if [ "$start_choice" = "Y" ]; then
    echo "Starting EntiretyView..."
    python3 ./script.py
    
    # If they used a venv, deactivate it after the program closes
    if [ "$env_choice" = "Y" ]; then
        deactivate
    fi
elif [ "$start_choice" = "N" ]; then
    echo "Terminating..."
    if [ "$env_choice" = "Y" ]; then
        deactivate
    fi
    exit 0
else
    echo "Invalid option. Exiting."
    if [ "$env_choice" = "Y" ]; then
        deactivate
    fi
fi
