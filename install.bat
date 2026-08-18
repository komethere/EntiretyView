@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

echo LOGO
echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo @github.com/komethere/EntiretyView
echo @holyarii ^& @komethere
echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo Loading...
echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

:: 1. Prompt for Virtual Environment selection
set /p env_choice=Would you like to install in a Virtual Environment? (Y/N): 

if /i "%env_choice%"=="Y" (
    echo Creating virtual environment inside .\EntiretyView\.venv...
    python -m venv .\.venv
    
    echo Activating Virtual Environment...
    call .\.venv\Scripts\activate.bat
    
    echo Installing dependencies...
    python -m pip install --upgrade pip
    pip install -r .\requirements.txt
    echo Successfully installed all dependencies in the Virtual Environment!
) else (
    echo Installing globally...
    python -m pip install --upgrade pip
    python -m pip install -r .\requirements.txt
    echo Successfully installed all dependencies globally!
)

:: Hi guys how are you doing this is the part that asks you to run it incase you didnt know
echo.
set /p start_choice=Would you like to start EntiretyView? (Y/N): 

if /i "%start_choice%"=="Y" (
    echo Starting EntiretyView...
    python .\src\script.py
    
    :: Deactivate the Virtual Environment after the program closes
    if /i "%env_choice%"=="Y" call .\.venv\Scripts\deactivate.bat
) else (
    echo Terminating...
    if /i "%env_choice%"=="Y" call .\.venv\Scripts\deactivate.bat
    exit /b 0
)

pause