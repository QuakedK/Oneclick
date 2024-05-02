:: Restore Point.      
cls
Color D
chcp 65001 >nul 2>&1
echo. 
echo. 
echo.		                     
echo.				  ░█▀▄░█▀▀░█▀▀░▀█▀░█▀█░█▀▄░█▀▀░░░█▀█░█▀█░▀█▀░█▀█░▀█▀
echo.				  ░█▀▄░█▀▀░▀▀█░░█░░█░█░█▀▄░█▀▀░░░█▀▀░█░█░░█░░█░█░░█░
echo.				  ░▀░▀░▀▀▀░▀▀▀░░▀░░▀▀▀░▀░▀░▀▀▀░░░▀░░░▀▀▀░▀▀▀░▀░▀░░▀░
echo.
echo.                      ╔════════════════════════════════════════════════════════════════════════╗                    
echo.                      ║            Create a restore point to undo system changes               ║
echo.                      ║  Quaked's team isn't liable for issues; it's recommended to make one.  ║
echo.                      ║                ^(Custom OS users may face limitations^)                  ║                   
echo.                      ╚════════════════════════════════════════════════════════════════════════╝
echo.

chcp 437 >nul
@echo off

echo Enabling System Protection!
powershell -ExecutionPolicy Unrestricted -NoProfile Enable-ComputerRestore -Drive 'C:\'>nul 2>&1
Reg.exe delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsNT\CurrentVersion\SystemRestore" /v "RPSessionInterval" /f  >nul 2>&1
Reg.exe delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsNT\CurrentVersion\SystemRestore" /v "DisableConfig" /f >nul 2>&1
Reg.exe add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "SystemRestorePointCreationFrequency" /t REG_DWORD /d 0 /f  >nul 2>&1
timeout 1 > nul 

set /p choice=Do you want to make a restore point? (Y/N): 
if /i "%choice%"=="Y" (
    echo Creating restore point...
    powershell -Command "Checkpoint-Computer -Description 'OneClick V4 Restore Point'"
    echo Restore point successfully created.
    pause 
) else if /i "%choice%"=="N" (
    echo Not creating a restore point, use at discretion.
    pause
) else (
    echo Invalid choice. Please choose Y or N.
)
