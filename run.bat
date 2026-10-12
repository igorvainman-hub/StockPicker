@echo off
setlocal
cd /d "%~dp0"
if not exist ".venv\Scripts\python.exe" (
    echo Virtual environment not found. Run: py -3.13 -m venv .venv
    exit /b 1
)
set PYTHONPATH=%~dp0src;%PYTHONPATH%
".venv\Scripts\python.exe" -m stock_picker.main
