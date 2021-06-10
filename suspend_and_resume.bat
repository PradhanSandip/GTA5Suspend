@echo off
tasklist /fi "imagename eq GTA5.exe" | find /i "GTA5.exe" > nul
if not errorlevel 1 (NUL) else (
    echo "GTA NOT RUNNING"
    pause
    exit
)

pssuspend.exe GTA5.exe
@echo "GTA5.exe process suspended and will resume in 10 seconds"
timeout 10 >nul /nobreak
pssuspend.exe -r GTA5.exe
pause
