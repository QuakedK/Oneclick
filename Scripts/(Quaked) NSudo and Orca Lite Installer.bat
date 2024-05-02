: (Quaked) NSudo and Orca Lite Installer.
@echo off
cls
chcp 65001 >nul 2>&1
color 9
echo.
echo.
echo.
echo.
echo.              
echo. 
echo.                                            ██████╗ ██████╗  ██████╗ █████╗        
echo.                                           ██╔═══██╗██╔══██╗██╔════╝██╔══██╗       
echo.                                           ██║   ██║██████╔╝██║     ███████║       
echo.                                           ██║   ██║██╔══██╗██║     ██╔══██║       
echo.                                           ╚██████╔╝██║  ██║╚██████╗██║  ██║       
echo.                                            ╚═════╝ ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝       
echo.
echo. 
echo.
echo.                              
echo Do you want to install NSudo and Orca Lite?
set /p choice=Enter (Y/N): 

if /i "%choice%"=="Y" (
    set "fileURL=https://github.com/QuakedK/Downloads/raw/main/NSudoLG.exe"
    set "fileName=NSudoLG.exe"
    set "fileURL2=https://raw.githubusercontent.com/QuakedK/Downloads/main/OrcaLite.bat"
    set "fileName2=Orca Lite.bat"
) else if /i "%choice%"=="N" ( 
    echo Skipping NSudo and Orca Lite Install! 
    timeout 2 > nul
    goto :end4
)

set "downloadsFolder=%USERPROFILE%\Downloads"
chcp 65001 >nul 2>&1
echo.
echo ╔═════════════════════════════╗
echo ║                             ║
echo ║    Downloading resources    ║
echo ║                             ║
echo ╚═════════════════════════════╝

curl -s -L "%fileURL%" -o "%downloadsFolder%\%fileName%"
curl -s -L "%fileURL2%" -o "%downloadsFolder%\%fileName2%"
if exist "%downloadsFolder%\%fileName%" (
    echo NSudo and Orca Lite download successful!
    cls
    echo Check "Enable All Privileges" Then click "Browse"
    echo Locate your downloads folder then select "OrcaLite.bat" then run it.
    echo Let it finish, then continue with one click by pressing space! 
    start "" "%downloadsFolder%\%fileName%"
    pause
) else (
    echo NSudo download failed.
    echo Skipping!
    timeout 1 > nul
    goto :end4  
)

:end4
echo Nsudo Skipped!
pause
