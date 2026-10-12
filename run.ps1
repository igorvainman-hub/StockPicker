$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$pythonExe = Join-Path $scriptDir ".venv\Scripts\python.exe"

if (-not (Test-Path $pythonExe)) {
    Write-Error "Virtual environment not found. Run: py -3.13 -m venv .venv"
    exit 1
}

$env:PYTHONPATH = "$scriptDir\src;$env:PYTHONPATH"
& $pythonExe -m stock_picker.main
