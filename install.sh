#!/bin/bash
export LANG=en_US.UTF-8
echo "LOGO"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "@github.com/repo"
echo "@holyari \& @komethere"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "Loading..."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "REQUIREMENTS.txt INSTALL HERE"
echo "Succesfully installed all dependencies!"
echo ""
read -p "Would you like to start PROGRAM (Y/N): " id
id=$(echo "$id" | tr '[:lower:]' '[:upper:]')
if [ "$id" = "Y" ]; then
    python3 ./script.py
elif [ "$id" = "N" ]; then
    echo "terminating..."
    exit 0
fi