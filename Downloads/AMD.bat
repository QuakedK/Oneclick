@echo off
:: Set Hive
set "HIVE=SYSTEM\CurrentControlSet"

:: Define Log File
set "LogFile=AMD_Service_Disable.log"
echo AMD Service Disable Script Started - %date% %time% > "%LogFile%"

:: Disable AMD Crash Defender Service
echo Disabling AMD Crash Defender Service... >> "%LogFile%"
reg query "HKLM\%HIVE%\Services\AMD Crash Defender Service" >nul 2>&1 && (
    reg add "HKLM\%HIVE%\Services\AMD Crash Defender Service" /v "Start" /t REG_DWORD /d "4" /f >> "%LogFile%" 2>&1
) || echo AMD Crash Defender Service not found. >> "%LogFile%"

:: Disable AMD External Events Utility
echo Disabling AMD External Events Utility... >> "%LogFile%"
reg query "HKLM\%HIVE%\Services\AMD External Events Utility" >nul 2>&1 && (
    reg add "HKLM\%HIVE%\Services\AMD External Events Utility" /v "Start" /t REG_DWORD /d "4" /f >> "%LogFile%" 2>&1
) || echo AMD External Events Utility not found. >> "%LogFile%"

:: Disable AUEPLauncher
echo Disabling AUEPLauncher... >> "%LogFile%"
reg query "HKLM\%HIVE%\Services\AUEPLauncher" >nul 2>&1 && (
    reg add "HKLM\%HIVE%\Services\AUEPLauncher" /v "Start" /t REG_DWORD /d "4" /f >> "%LogFile%" 2>&1
) || echo AUEPLauncher not found. >> "%LogFile%"

:: Finalize
echo AMD Service Disable Script Completed - %date% %time% >> "%LogFile%"
exit