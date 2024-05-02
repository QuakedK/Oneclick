:: (Quaked) Cleanup and Defrag.
cls
color 9
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.
echo.
echo.                                 ██████╗ ██╗     ███████╗ █████╗ ███╗   ██╗██╗   ██╗██████╗ 
echo.                                 ██╔════╝██║     ██╔════╝██╔══██╗████╗  ██║██║   ██║██╔══██╗
echo.                                 ██║     ██║     █████╗  ███████║██╔██╗ ██║██║   ██║██████╔╝
echo.                                 ██║     ██║     ██╔══╝  ██╔══██║██║╚██╗██║██║   ██║██╔═══╝ 
echo.                                 ╚██████╗███████╗███████╗██║  ██║██║ ╚████║╚██████╔╝██║     
echo.                                  ╚═════╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝     
echo. 
echo.                                  ╔════════════════════════════════════════════════════╗
echo.                                  ║ Running file CleanUp, Network CleanUp and Defrag.. ║       
echo.                                  ╚════════════════════════════════════════════════════╝
echo.
echo.
echo.                                                                          
timeout 2 > nul

cls
chcp 437 >nul
color D
echo (Quaked) Running File Cleanup...
del "%LocalAppData%\Microsoft\Windows\INetCache\." /s /f /q
del "%AppData%\Local\Microsoft\Windows\INetCookies\." /s /f /q
del "%temp%" /s /f /q
del "%AppData%\Discord\Cache\." /s /f /q
del "%AppData%\Discord\Code Cache\." /s /f /q
del "%ProgramData%\USOPrivate\UpdateStore" /s /f /q
del "%ProgramData%\USOShared\Logs" /s /f /q
del "C:\Windows\System32\SleepStudy" /s /f /q
rmdir /S /Q "%AppData%\Local\Microsoft\Windows\INetCache\"
rmdir /S /Q "%AppData%\Local\Microsoft\Windows\INetCookies"
rmdir /S /Q "%LocalAppData%\Microsoft\Windows\WebCache"
rmdir /S /Q "%AppData%\Local\Temp\"
rd "%AppData%\Discord\Cache" /s /q
rd "%AppData%\Discord\Code Cache" /s /q
rd "%SystemDrive%\$GetCurrent" /s /q
rd "%SystemDrive%\$SysReset" /s /q
rd "%SystemDrive%\$Windows.~BT" /s /q
rd "%SystemDrive%\$Windows.~WS" /s /q
rd "%SystemDrive%\$WinREAgent" /s /q
rd "%SystemDrive%\OneDriveTemp" /s /q
del "%WINDIR%\Logs" /s /f /q
del "%WINDIR%\Installer\$PatchCache$" /s /f /q
rd /s /q %LocalAppData%\Temp
rd /s /q %LocalAppData%\Temp\mozilla-temp-files
rmdir /s /q "%SystemRoot%\System32\SleepStudy"
rmdir /s /q "%SystemRoot%\System32\SleepStudy >nul 2>&1"
Del /S /F /Q %temp%
Del /S /F /Q %Windir%\Temp
Del /S /F /Q C:\WINDOWS\Prefetch
echo File Cleanup completed successfully ...
timeout 2 > nul

cls
color 9
echo (Quaked) Running Network Cleanup...
ipconfig /release
ipconfig /renew
arp -d *
nbtstat -R
nbtstat -RR
ipconfig /flushdns
ipconfig /registerdns
echo Network Cleanup completed successfully ...
timeout 2 > nul

:: (Quaked) Defrag.
@echo off
cls
chcp 65001 >nul 2>&1
color D
echo.
echo.
echo.
echo.
echo.
echo.
echo. 
echo. 
echo.                           ╔══════════════════════════════════════════════════════════════════════╗
echo.                           ║                         (Defagging Drives)                           ║
echo.                           ║In layman's terms It basically cleans and may speed up your harddrive!║
echo.                           ║ But It could take 10-20 mins, if this is your first time defragging. ║
echo.                           ║         Skip, So we don't have y'all complaining lmao                ║
echo.                           ╚══════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo.
echo.
echo. 
echo. 
echo Do you want to defrag drives? (yes/no): 
set /p defragChoice=

if /i "%defragChoice%"=="yes" (
    echo Running Drive Defragmentation...
    echo -----------------------------
    
    Defrag C: /o
    Defrag C: /x
    
    Defrag D: /o
    Defrag D: /x
    
    Defrag E: /o
    Defrag E: /x
    
    Defrag F: /o
    Defrag F: /x
    
    echo Drive defragmentation completed successfully.
) else (
    echo Drive defragmentation skipped. No changes were made.
)
pause
