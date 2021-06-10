@echo off
tasklist /fi "imagename eq GTA5.exe" | find /i "GTA5.exe" > nul
if not errorlevel 1 (NUL) else (
    echo "GTA NOT RUNNING"
    PAUSE
    EXIT
)

pssuspend.exe GTA5.exe
@ECHO off
@echo "GTA5.exe process suspended and will resume in 10 seconds"
timeout 10 >nul /nobreak
pssuspend.exe -r GTA5.exe
pause