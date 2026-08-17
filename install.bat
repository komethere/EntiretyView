@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion
echo LOGO
echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo @github.com/repo
echo @holyari & @komethere
echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo Loading...
echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo REQUIREMENTS.txt INSTALL HERE
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
echo Succesfully installed all dependencies!
echo.
set /p id=Would you like to start PROGRAM (Y/N): 
if /i "%id%"=="Y" (
    py ./script.py
)
if /i "%id%"=="N" (
    echo terminating...
    exit
)
pause