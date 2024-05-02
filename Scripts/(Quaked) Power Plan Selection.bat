:: (Quaked) Power Plan Selection.
@echo off
cls
chcp 65001 >nul 2>&1
color D
echo.
echo.
echo.                                          ░█▀█░█▀█░█░█░█▀▀░█▀▄░░░█▀█░█░░░█▀█░█▀█
echo.                                          ░█▀▀░█░█░█▄█░█▀▀░█▀▄░░░█▀▀░█░░░█▀█░█░█
echo.                                          ░▀░░░▀▀▀░▀░▀░▀▀▀░▀░▀░░░▀░░░▀▀▀░▀░▀░▀░▀           
echo. 
echo.                         ╔════════════════════════════════════════════════════════════════════════╗
echo.                         ║                   1. Quaked Ultimate Performance                       ║
echo.                         ║   Provides High Performance And Low Latency while having idles enabled ║ 
echo.                         ║       Perfect for the majority of system's and recommended by me!      ║
echo.                         ╚════════════════════════════════════════════════════════════════════════╝              
echo.
echo.
echo.                         ╔════════════════════════════════════════════════════════════════════════╗
echo.                         ║          2. (Advanced) Quaked Ultimate Performance Idle Off:           ║
echo.                         ║      Provides Sightly Decreased Latency And better performance,        ║
echo.                         ║       But unfortunately At the cost of having idle off you get         ║
echo.                         ║  More Wattage, power consumption, higher cpu temps and 100p Cpu Usage  ║   
echo.                         ╚════════════════════════════════════════════════════════════════════════╝           
echo.
echo.
echo Choose an option:
echo 1. Quaked Ultimate Performance
echo 2. (Advanced) Quaked Ultimate Performance Idle Off
echo 3. Skip!

set /p option="Enter option number: "

if "%option%"=="1" (
    set "fileID=1mxFJjSxtx9LOLivfUjr3UE_rxizUfZ9Q"
    set "fileName=Quaked Ultimate Performance.pow"
) else if "%option%"=="2" (
    set "fileID=1_KxNB1UDRnvXLKBS84sZX3k03ixxjogY"
    set "fileName=Quaked Ultimate Performance Idle Off.pow"
) else if "%option%"=="3" ( 
    echo Skipping Power Plan Section! 
    timeout 2 > nul   
    goto :endpower
)

set "downloadsFolder=%USERPROFILE%\Downloads"
chcp 65001 >nul 2>&1
echo.
echo ╔═════════════════════════════╗
echo ║                             ║
echo ║    Downloading resources    ║
echo ║                             ║
echo ╚═════════════════════════════╝
curl -s -L "https://drive.google.com/uc?export=download&id=%fileID%" -o "%downloadsFolder%\%fileName%"
if exist "%downloadsFolder%\%fileName%" (
    echo Download successful!
    powercfg -import "%downloadsFolder%\%fileName%"
    echo.
    powercfg -delete 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c >nul 2>&1
    powercfg -delete 381b4222-f694-41f0-9685-ff5bb260df2e >nul 2>&1
    powercfg -delete a1841308-3541-4fab-bc81-f71556f20b4a >nul 2>&1
    timeout 3 > nul
    echo.
    echo Opening Power Plan Selection...
    powercfg.cpl
    echo You might have to refresh to see any changes!
    pause
) else (
    echo Download failed.
    echo Skipping Power Plan Section! 
    timeout 2 > nul   
    goto :endpower
)

cls
:endpower
echo Skipped Power Plan Section! 
pause
