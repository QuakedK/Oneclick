@echo off

set "HIVE=SYSTEM\CurrentControlSet"

reg.exe add "HKLM\%HIVE%\Services\AMD Crash Defender Service" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg.exe add "HKLM\%HIVE%\Services\AMD External Events Utility" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg.exe add "HKLM\%HIVE%\Services\AUEPLauncher" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
exit