@echo off
:: Check for administrative privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo This script requires administrative privileges.
    pause
    exit /b
)

:: Set Log File
set "LogFile=Task_Modification.log"
echo Task Modification Script Started - %date% %time% > "%LogFile%"

:: Function to disable and delete a scheduled task
:DisableAndDeleteTask
    set "TaskName=%~1"
    echo Processing %TaskName%... >> "%LogFile%"

    :: Check if the task exists
    schtasks /Query /TN "%TaskName%" >nul 2>&1
    if %errorlevel% eq 0 (
        :: Disable the task
        schtasks /Change /TN "%TaskName%" /Disable >> "%LogFile%" 2>&1
        if %errorlevel% neq 0 (
            echo Failed to disable %TaskName% >> "%LogFile%"
        ) else (
            echo Successfully disabled %TaskName% >> "%LogFile%"
        )
        :: Delete the task
        schtasks /Delete /TN "%TaskName%" /F >> "%LogFile%" 2>&1
        if %errorlevel% neq 0 (
            echo Failed to delete %TaskName% >> "%LogFile%"
        ) else (
            echo Successfully deleted %TaskName% >> "%LogFile%"
        )
    ) else (
        echo Task %TaskName% does not exist >> "%LogFile%"
    )
    goto :eof

:: List of tasks to process
set TaskList=^
"MicrosoftEdgeUpdateTaskMachineUA" ^
"MicrosoftEdgeUpdateTaskMachineCore" ^
"OneDrive Reporting Task-S-1-5-21-2240390734-3588247625-2595490332-1001" ^
"OneDrive Standalone Update Task-S-1-5-21-2240390734-3588247625-2595490332-1001" ^
"update-S-1-5-21-2240390734-3588247625-2595490332-1001" ^
"update-sys" ^
"\Microsoft\Windows\UNP\RunUpdateNotificationMgr" ^
"\Microsoft\Windows\UpdateOrchestrator\Schedule Maintenance Work" ^
"\Microsoft\Windows\UpdateOrchestrator\Schedule Scan" ^
"\Microsoft\Windows\UpdateOrchestrator\Schedule Scan Static Task" ^
"\Microsoft\Windows\UpdateOrchestrator\Schedule Wake To Work" ^
"\Microsoft\Windows\UpdateOrchestrator\Schedule Work" ^
"\Microsoft\Windows\UpdateOrchestrator\Start Oobe Expedite Work" ^
"\Microsoft\Windows\UpdateOrchestrator\Report policies" ^
"\Microsoft\Windows\UpdateOrchestrator\StartOobeAppsScan_LicenseAccepted" ^
"\Microsoft\Windows\UpdateOrchestrator\StartOobeAppsScanAfterUpdate" ^
"\Microsoft\Windows\UpdateOrchestrator\USO_UxBroker" ^
"\Microsoft\Windows\UpdateOrchestrator\UUS Failover Task"

:: Process each task in the list
for %%T in (%TaskList%) do (
    call :DisableAndDeleteTask "%%T"
)

echo Task Modification Script Completed - %date% %time% >> "%LogFile%"
