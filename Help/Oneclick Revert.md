# Oneclick Revert
Oneclick creates a multitude of different backup, here's how you can go above using them.

# Restore Point
If the you choose "Yes" to creating a System Restore Point, running it allows the you to fully restore everything to how it was before running Oneclick!

Normally you would type create a restore point -> System Restore, however since [Update Disabler](https://github.com/QuakedK/Update-Disabler) was added it breaks the normal way of restoring.
Simply reverting Update Disabler and restarting allows, allows you to restore inside of Windows normmally. However System Restoring is still possible in Advanced Recovery, skipping the trouble off reverting Update Disabler.

**Advanced Recovery:**
1. Hold Shift and click Restart.
2. Once in Advanced Recovery, click Troubleshoot -> Advanced Options -> System Restore

Having trouble navigating in Advanced Recovery? Watch this excellent [tutorial!](https://youtube.com/shorts/v1K0BQoV34A?feature=share)

**Regular Way:**

Note: [Update Disabler](https://github.com/QuakedK/Update-Disabler) must be revert first for this way to work.

1. Search for "Create a restore point" and select it.
2. Once in System Protection, click System Restore, then click Next.
3. Select "Oneclick Restore Point" and follow the prompts to restore your system.

Having trouble? Watch this excellent [tutorial!](https://www.youtube.com/watch?v=reOct_5rm00)

# Update Disabler (Windows Updates)

1. Open CMD and Paste the following.
```bat
sc config TrustedInstaller start=auto
```
2. Open [Nsudo](https://github.com/QuakedK/Task-Destroyer/raw/refs/heads/main/Downloads/NSudoLG.exe) and Enable All Privileges.
3. Then type CMD in the Address Bar, then click run and paste the following commands.
```bat
reg import "C:\Oneclick Tools\Update Disabler\Reg Backup\PolicyBackup.reg"
reg import "C:\Oneclick Tools\Update Disabler\Reg Backup\WindowsUpdateServiceBackup.reg" 
reg import "C:\Oneclick Tools\Update Disabler\Reg Backup\UpdateOrchestratorServiceBackup.reg"
reg import "C:\Oneclick Tools\Update Disabler\Reg Backup\WindowsUpdateMedicServiceBackup.reg"
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /f

move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\DoSvc.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\DoSvc.dll.mui" "C:\Windows\System32\en-US"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\MoNotificationUxStub.exe" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\MusUpdateHandlers.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\MusUpdateHandlers.dll.mui" "C:\Windows\System32\en-US"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\MusUpdateHandlers1.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\MusUpdateHandlers1.dll.mui" "C:\Windows\System32\en-US"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\Sihclient.exe" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\sihclient.exe.mui" "C:\Windows\System32\en-US"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\UIEOrchestrator.exe" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\UpdateAgent.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\UpdateCompression.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\SysWOW64\UpdateCompression.dll" "C:\Windows\SysWOW64"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\updatecsp.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\updatepolicy.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\UpdatePolicy.dll.mui" "C:\Windows\System32\en-US"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\UpdateReboot.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\UpgradeResultsUI.exe" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\UpgradeResultsUI.exe.mui" "C:\Windows\System32\en-US"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\upfc.exe" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\UsoClient.exe" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\WaaSAssessment.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\WaaSMedicPS.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\WaaSMedicSvc.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\wuauclt.exe" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\wusa.exe" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\wusa.exe.mui" "C:\Windows\System32\en-US"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\SysWOW64\wusa.exe" "C:\Windows\SysWOW64"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\USS" "C:\Windows\UUS"

sc config TrustedInstaller start=auto >nul 2>&1
sc config uhssvc start=auto >nul 2>&1
sc config BITS start=auto >nul 2>&1
sc config DoSvc start=auto >nul 2>&1
```

# Task Destroyer (Task Scheduler)

**Revert**

1. Open [Nsudo](https://github.com/QuakedK/Task-Destroyer/raw/refs/heads/main/Downloads/NSudoLG.exe) and Enable All Privileges.
2. Then type CMD in the Address Bar, then click run and paste the following commands.
```bat
reg import "C:\Oneclick Tools\Task Destroyer\Reg Backup\TaskSchedulerBackup.reg"
rd /s /q "C:\WINDOWS\System32\Tasks"
move "C:\Oneclick Tools\Task Destroyer\Task Backup\Tasks" "C:\WINDOWS\System32\Tasks"
```

**Revert (Without adding back all of the original task)**

Note: This method is for those who want to keep all task deleted but still use Task Scheduler for some apps, etc <3

1. Open [Nsudo](https://github.com/QuakedK/Task-Destroyer/raw/refs/heads/main/Downloads/NSudoLG.exe) and Enable All Privileges.
2. Then type CMD in the Address Bar, then click run and paste the following command.
```bat
mkdir "C:\WINDOWS\System32\Tasks\Microsoft\Windows"
```

# Services
1. Open [Nsudo](https://github.com/QuakedK/Task-Destroyer/raw/refs/heads/main/Downloads/NSudoLG.exe) and Enable All Privileges.
2. Then type CMD in the Address Bar, then click run and paste the following command.
```bat
reg import "C:\Oneclick Tools\Backup\Services\ServicesBackup.reg"
```

# Widgetss
