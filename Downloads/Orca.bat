@echo off
schtasks /Change /TN "MicrosoftEdgeUpdateTaskMachineUA" /Disable
schtasks /Change /TN "MicrosoftEdgeUpdateTaskMachineCore" /Disable
schtasks /Change /TN "OneDrive Reporting Task-S-1-5-21-2240390734-3588247625-2595490332-1001" /Disable >nul 2>&1
schtasks /Change /TN "OneDrive Standalone Update Task-S-1-5-21-2240390734-3588247625-2595490332-1001" /Disable >nul 2>&1
schtasks /Change /TN "update-S-1-5-21-2240390734-3588247625-2595490332-1001" /Disable >nul 2>&1
schtasks /Change /TN "update-sys" /Disable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\UNP\RunUpdateNotificationMgr" /Disable
schtasks /Change /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Maintenance Work" /Disable
schtasks /Change /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan" /Disable
schtasks /Change /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan Static Task" /Disable
schtasks /Change /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Wake To Work" /Disable
schtasks /Change /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Work" /Disable
schtasks /Change /TN "\Microsoft\Windows\UpdateOrchestrator\Start Oobe Expedite Work" /Disable
schtasks /Change /TN "\Microsoft\Windows\UpdateOrchestrator\Report policies" /Disable
schtasks /Change /TN "\Microsoft\Windows\UpdateOrchestrator\StartOobeAppsScan_LicenseAccepted" /Disable
schtasks /Change /TN "\Microsoft\Windows\UpdateOrchestrator\StartOobeAppsScanAfterUpdate" /Disable
schtasks /Change /TN "\Microsoft\Windows\UpdateOrchestrator\USO_UxBroker" /Disable
schtasks /Change /TN "\Microsoft\Windows\UpdateOrchestrator\UUS Failover Task" /Disable
schtasks /Delete /TN "MicrosoftEdgeUpdateTaskMachineUA" /F
schtasks /Delete /TN "MicrosoftEdgeUpdateTaskMachineCore" /F
schtasks /Delete /TN "OneDrive Reporting Task-S-1-5-21-2240390734-3588247625-2595490332-1001" /F >nul 2>&1
schtasks /Delete /TN "OneDrive Standalone Update Task-S-1-5-21-2240390734-3588247625-2595490332-1001" /F >nul 2>&1
schtasks /Delete /TN "update-S-1-5-21-2240390734-3588247625-2595490332-1001" /F >nul 2>&1
schtasks /Delete /TN "update-sys" /F >nul 2>&1
schtasks /Delete /TN "\Microsoft\Windows\UNP\RunUpdateNotificationMgr" /F
schtasks /Delete /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Maintenance Work" /F
schtasks /Delete /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan" /F
schtasks /Delete /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan Static Task" /F
schtasks /Delete /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Wake To Work" /F
schtasks /Delete /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Work" /F
schtasks /Delete /TN "\Microsoft\Windows\UpdateOrchestrator\Start Oobe Expedite Work" /F
schtasks /Delete /TN "\Microsoft\Windows\UpdateOrchestrator\Report policies" /F
schtasks /Delete /TN "\Microsoft\Windows\UpdateOrchestrator\StartOobeAppsScan_LicenseAccepted" /F
schtasks /Delete /TN "\Microsoft\Windows\UpdateOrchestrator\StartOobeAppsScanAfterUpdate" /F
schtasks /Delete /TN "\Microsoft\Windows\UpdateOrchestrator\USO_UxBroker" /F
schtasks /Delete /TN "\Microsoft\Windows\UpdateOrchestrator\UUS Failover Task" /F

