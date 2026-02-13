# Oneclick Revert
Oneclick creates various different types of backups and here's how you can use them!

# 1. Restore Point
**Regular Way:**
1. Search for "Create a restore point" and select it.
2. Once in System Protection, click System Restore, then click Next.
3. Select "Oneclick Restore Point" and follow the prompts to restore your system.

Having trouble? Watch this excellent [tutorial!](https://www.youtube.com/watch?v=reOct_5rm00)

**Advanced Recovery:**
1. Hold Shift and click Restart.
2. Once in Advanced Recovery, click Troubleshoot -> Advanced Options -> System Restore

Having trouble navigating in Advanced Recovery? Watch this excellent [tutorial!](https://youtube.com/shorts/v1K0BQoV34A?feature=share)

# 2. Registry
1. Open CMD as admin and paste the following.
```
sc config TrustedInstaller start=demand
```
2. Go to file explorer and find ```C:\Oneclick Backup\Registry``` and confirm there's 5 .reg files.
3. Now Open [Nsudo](https://github.com/QuakedK/Oneclick/raw/refs/heads/main/Downloads/V8.0/NSudoLG.exe) and Enable All Privileges.
4. Drag and run ```HKCC.reg, HKCR.reg, HKCU.reg, HKLM.reg and HKC.reg``` into [Nsudo](https://github.com/QuakedK/Oneclick/raw/refs/heads/main/Downloads/V8.0/NSudoLG.exe) one at a time of course.
5. Restart you're PC!

> [!NOTE]
> If Process Destroyer Extreme was done, TrustInstaller must be restored differently!
> 1. Go to file explorer and find ```"C:\Oneclick Tools\Process Destroyer\Revert\Trusted_Installer_Backup.reg"```. and open it up.
> 2. Then restart and follow step 2 above.

# 3. Winver Change
1. Open CMD as admin and paste the following.
```
sc config TrustedInstaller start=demand
```
2. Go to file explorer and find ```C:\Oneclick Tools\Winver Logo\DLL Backup``` and confirm there's a ```basebrd.dll``` file.
3. Now Open [Nsudo](https://github.com/QuakedK/Oneclick/raw/refs/heads/main/Downloads/V8.0/NSudoLG.exe) and Enable All Privileges.
4. Then type CMD in the Address Bar, then click run and paste the following commands.
```bat
del "C:\Windows\Branding\Basebrd\basebrd.dll" /s /f /q
move /Y "C:\Oneclick Tools\Winver Logo\DLL Backup\basebrd.dll" "C:\Windows\Branding\Basebrd"
```
5. Restart you're PC!

> [!NOTE]
> If Process Destroyer Extreme was done, TrustInstaller must be restored differently!
> 1. Go to file explorer and find ```"C:\Oneclick Tools\Process Destroyer\Revert\Trusted_Installer_Backup.reg"```. and open it up.
> 2. Then restart and follow step 2 above.

# 4. Update Disabler
1. Open CMD as admin and paste the following.
```
sc config TrustedInstaller start=demand
```
2. Go to file explorer and find ```C:\Oneclick Tools\Update Disabler``` and confirm there's files in ```Reg Backup Folder``` & ```File Backup Folder```.
3. Now open [Nsudo](https://github.com/QuakedK/Oneclick/raw/refs/heads/main/Downloads/V8.0/NSudoLG.exe) and Enable All Privileges.
4. Then type CMD in the Address Bar, then click run and paste the following commands.
```bat
reg import "C:\Oneclick Tools\Update Disabler\Reg Backup\PolicyBackup.reg"
reg import "C:\Oneclick Tools\Update Disabler\Reg Backup\WindowsUpdateServiceBackup.reg"
reg import "C:\Oneclick Tools\Update Disabler\Reg Backup\UpdateOrchestratorServiceBackup.reg"
reg import "C:\Oneclick Tools\Update Disabler\Reg Backup\WindowsUpdateMedicServiceBackup.reg"
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /f

move /Y "C:\Oneclick Tools\Update Disabler\File Backup\MoUsoCoreWorker.exe" "C:\Windows\UUS\amd64"
move /Y "C:\Oneclick Tools\Update Disabler\File Backup\Extra\MoUsoCoreWorker.exe" "C:\Windows\UUS\Packages\Preview\amd64"
move /Y "C:\Oneclick Tools\Update Disabler\File Backup\UsoClient.exe" "C:\Windows\System32"
```
5. Restart you're PC!

> [!NOTE]
> If Process Destroyer Extreme was done, TrustInstaller must be restored differently!
> 1. Go to file explorer and find ```"C:\Oneclick Tools\Process Destroyer\Revert\Trusted_Installer_Backup.reg"```. and open it up.
> 2. Then restart and follow step 2 above.

# 5. Task Destroyer | (Task Scheduler)
**Revert Method 1 (Full Revert)**

1. Open [Nsudo](https://github.com/QuakedK/Oneclick/raw/refs/heads/main/Downloads/V8.0/NSudoLG.exe) and Enable All Privileges.
2. Then type CMD in the Address Bar, then click run and paste the following commands.
```bat
reg import "C:\Oneclick Tools\Task Destroyer\Reg Backup\TaskSchedulerBackup.reg"
rd /s /q "C:\WINDOWS\System32\Tasks"
move /Y "C:\Oneclick Tools\Task Destroyer\Task Backup\Tasks" "C:\WINDOWS\System32\Tasks"
reg add "HKLM\System\CurrentControlSet\Services\TimeBrokerSvc" /v "Start" /t REG_DWORD /d "3" /f
```
3. Restart you're PC!

**Revert Method 2 (Without adding back all of the original task)**
**This method is for those who want to keep all task deleted but still use Task Scheduler for some apps, etc <3**

1. Open [Nsudo](https://github.com/QuakedK/Oneclick/raw/refs/heads/main/Downloads/V8.0/NSudoLG.exe) and Enable All Privileges.
2. Then type CMD in the Address Bar, then click run and paste the following commands.
```bat
mkdir "C:\WINDOWS\System32\Tasks\Microsoft\Windows"
reg add "HKLM\System\CurrentControlSet\Services\TimeBrokerSvc" /v "Start" /t REG_DWORD /d "3" /f
```
3. Restart you're PC!

> [!NOTE]
> If Process Destroyer Extreme was done, TrustInstaller must be restored differently!
> 1. Go to file explorer and find ```"C:\Oneclick Tools\Process Destroyer\Revert\Trusted_Installer_Backup.reg"```. and open it up.
> 2. Then restart and follow step 2 above.

# 6. Autologger Destroyer
1. Open CMD as admin and paste the following.
```
sc config TrustedInstaller start=demand
```
2. Go to file explorer and find ```C:\Oneclick Tools\Autologger Destroyer\Reg Backup``` and confirm there's a ```AutologgerBackup.reg``` file.
3. Now open [Nsudo](https://github.com/QuakedK/Oneclick/raw/refs/heads/main/Downloads/V8.0/NSudoLG.exe) and Enable All Privileges.
4. Drag and run ```AutologgerBackup.reg``` into [Nsudo](https://github.com/QuakedK/Oneclick/raw/refs/heads/main/Downloads/V8.0/NSudoLG.exe).
5. Restart you're PC!

> [!NOTE]
> If Process Destroyer Extreme was done, TrustInstaller must be restored differently!
> 1. Go to file explorer and find ```"C:\Oneclick Tools\Process Destroyer\Revert\Trusted_Installer_Backup.reg"```. and open it up.
> 2. Then restart and follow step 2 above.

# 7. Services
1. Open CMD as admin and paste the following.
```
sc config TrustedInstaller start=demand
```
2. Go to file explorer and find ```C:\Oneclick Backup\Services``` and confirm there's a ```Services.reg``` file.
3. Now open [Nsudo](https://github.com/QuakedK/Oneclick/raw/refs/heads/main/Downloads/V8.0/NSudoLG.exe) and Enable All Privileges.
4. Then type CMD in the Address Bar, then click run and paste the following commands.
```bat
reg import "C:\Oneclick Backup\Services\Services.reg"
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "3670016" /f
```
5. Restart you're PC! 

> [!NOTE]
> If Process Destroyer Extreme was done, TrustInstaller must be restored differently!
> 1. Go to file explorer and find ```"C:\Oneclick Tools\Process Destroyer\Revert\Trusted_Installer_Backup.reg"```. and open it up.
> 2. Then restart and follow step 2 above.

# 8. Auto Graphics Preferences, Priority and FSO
1. Open CMD as admin and paste the following.
```
sc config TrustedInstaller start=demand
```
2. Go to file explorer and find ```C:\Oneclick Backup\Priority``` and confirm there's a ```FSO.reg, GraphicsPreferences.reg, Priority.reg``` files.
3. Now open [Nsudo](https://github.com/QuakedK/Oneclick/raw/refs/heads/main/Downloads/V8.0/NSudoLG.exe) and Enable All Privileges.
4. Then type CMD in the Address Bar, then click run and paste the following commands.
```bat
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /f
reg delete "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options" /f

reg import "C:\Oneclick Backup\Priority\FSO.reg"
reg import "C:\Oneclick Backup\Priority\GraphicsPreferences.reg"
reg import "C:\Oneclick Backup\Priority\Priority.reg"
```
5. Restart you're PC! 

> [!NOTE]
> If Process Destroyer Extreme was done, TrustInstaller must be restored differently!
> 1. Go to file explorer and find ```"C:\Oneclick Tools\Process Destroyer\Revert\Trusted_Installer_Backup.reg"```. and open it up.
> 2. Then restart and follow step 2 above.


# 9. Microsoft Apps
1. Revert [Services](https://github.com/QuakedK/Oneclick/edit/main/Help/Oneclick%20Revert%202.md#7-services) first!
2. Open Powershell as admin.
3. Then paste the following command.
```bat
Get-AppxPackage -AllUsers | ForEach-Object {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppxManifest.xml"}
```

# 10. LockApp
1. Open CMD as admin and paste the following.
```
sc config TrustedInstaller start=demand
```
2. Go to file explorer and find ```C:\Oneclick Backup\LockApp``` and confirm there's ```LockApp.exe``` file.
3. Now open [Nsudo](https://github.com/QuakedK/Oneclick/raw/refs/heads/main/Downloads/V8.0/NSudoLG.exe) and Enable All Privileges.
4. Then type CMD in the Address Bar, then click run and paste the following commands.
```bat
move /Y "C:\Oneclick Backup\LockApp\LockApp.exe" "C:\Windows\SystemApps\Microsoft.LockApp_cw5n1h2txyewy"
```
5. Restart you're PC!

> [!NOTE]
> If Process Destroyer Extreme was done, TrustInstaller must be restored differently!
> 1. Go to file explorer and find ```"C:\Oneclick Tools\Process Destroyer\Revert\Trusted_Installer_Backup.reg"```. and open it up.
> 2. Then restart and follow step 2 above.

# 11. Smartscreen
1. Open CMD as admin and paste the following.
```
sc config TrustedInstaller start=demand
```
2. Go to file explorer and find ```C:\Oneclick Backup\Smartscreen``` and confirm there's ```CHXSmartScreen.exe, smartscreen.exe``` files.
3. Now open [Nsudo](https://github.com/QuakedK/Oneclick/raw/refs/heads/main/Downloads/V8.0/NSudoLG.exe) and Enable All Privileges.
4. Then type CMD in the Address Bar, then click run and paste the following commands.
```bat
move /Y "C:\Oneclick Backup\Smartscreen\CHXSmartScreen.exe" "C:\Windows\SystemApps\Microsoft.Windows.AppRep.ChxApp_cw5n1h2txyewy"
move /Y "C:\Oneclick Backup\Smartscreen\smartscreen.exe" "C:\Windows\System32"
```
5. Restart you're PC!

> [!NOTE]
> If Process Destroyer Extreme was done, TrustInstaller must be restored differently!
> 1. Go to file explorer and find ```"C:\Oneclick Tools\Process Destroyer\Revert\Trusted_Installer_Backup.reg"```. and open it up.
> 2. Then restart and follow step 2 above.

# 12. Sync Programs
1. Open CMD as admin and paste the following.
```
sc config TrustedInstaller start=demand
```
2. Go to file explorer and find ```C:\Oneclick Backup\Sync Programs``` and confirm there's ```CrossDeviceResume.exe, mobsync.exe``` files.
3. Now open [Nsudo](https://github.com/QuakedK/Oneclick/raw/refs/heads/main/Downloads/V8.0/NSudoLG.exe) and Enable All Privileges.
4. Then type CMD in the Address Bar, then click run and paste the following commands.
```bat
move /Y "C:\Oneclick Backup\Sync Programs\CrossDeviceResume.exe" "C:\Windows\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy"
move /Y "C:\Oneclick Backup\Sync Programs\mobsync.exe" "C:\Windows\System32"
```
5. Restart you're PC!

> [!NOTE]
> If Process Destroyer Extreme was done, TrustInstaller must be restored differently!
> 1. Go to file explorer and find ```"C:\Oneclick Tools\Process Destroyer\Revert\Trusted_Installer_Backup.reg"```. and open it up.
> 2. Then restart and follow step 2 above.

# 13. Xbox Bloat
1. Open CMD as admin and paste the following.
```
sc config TrustedInstaller start=demand
```
2. Go to file explorer and find ```C:\Oneclick Backup\Xbox Bloat``` and confirm there's ```22 files```.
3. Now open [Nsudo](https://github.com/QuakedK/Oneclick/raw/refs/heads/main/Downloads/V8.0/NSudoLG.exe) and Enable All Privileges.
4. Then type CMD in the Address Bar, then click run and paste the following commands.
```bat
move /Y "C:\Oneclick Backup\Xbox Bloat\GameBarPresenceWriter.exe" "C:\Windows\System32"
move /Y "C:\Oneclick Backup\Xbox Bloat\GameBarPresenceWriter.proxy.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Backup\Xbox Bloat\GameChatOverlayExt.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Backup\Xbox Bloat\GameChatTranscription.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Backup\Xbox Bloat\GamePanel.exe" "C:\Windows\System32"
move /Y "C:\Oneclick Backup\Xbox Bloat\GamePanelExternalHook.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Backup\Xbox Bloat\gamestreamingext.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Backup\Xbox Bloat\GameSystemToastIcon.contrast-white.png" "C:\Windows\System32"
move /Y "C:\Oneclick Backup\Xbox Bloat\GameSystemToastIcon.png" "C:\Windows\System32"
move /Y "C:\Oneclick Backup\Xbox Bloat\gameux.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Backup\Xbox Bloat\gamingtcui.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Backup\Xbox Bloat\XblAuthManager.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Backup\Xbox Bloat\XblAuthManagerProxy.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Backup\Xbox Bloat\XblAuthTokenBrokerExt.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Backup\Xbox Bloat\XblGameSave.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Backup\Xbox Bloat\XblGameSaveExt.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Backup\Xbox Bloat\XblGameSaveProxy.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Backup\Xbox Bloat\XblGameSaveTask.exe" "C:\Windows\System32"
move /Y "C:\Oneclick Backup\Xbox Bloat\XboxNetApiSvc.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Backup\Xbox Bloat\Windows.Gaming.Preview.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Backup\Xbox Bloat\Windows.Gaming.UI.GameBar.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Backup\Xbox Bloat\Windows.Gaming.XboxLive.Storage.dll" "C:\Windows\System32"
```
5. Restart you're PC!

> [!NOTE]
> If Process Destroyer Extreme was done, TrustInstaller must be restored differently!
> 1. Go to file explorer and find ```"C:\Oneclick Tools\Process Destroyer\Revert\Trusted_Installer_Backup.reg"```. and open it up.
> 2. Then restart and follow step 2 above.

# 14. Search
1. Open CMD as admin and paste the following.
```
sc config TrustedInstaller start=demand
```
2. Go to file explorer and find ```C:\Oneclick Backup\Search``` and confirm there's ```SearchHost.exe, StartMenuExperienceHost.exe, ShellExperienceHost.exe, taskhostw.exe``` files.
3. Now open [Nsudo](https://github.com/QuakedK/Oneclick/raw/refs/heads/main/Downloads/V8.0/NSudoLG.exe) and Enable All Privileges.
4. Then type CMD in the Address Bar, then click run and paste the following commands.
```bat
move /Y "C:\Oneclick Backup\Search\SearchHost.exe" "C:\Windows\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy"
move /Y "C:\Oneclick Backup\Search\StartMenuExperienceHost.exe" "C:\Windows\SystemApps\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy"
move /Y "C:\Oneclick Backup\Search\ShellExperienceHost.exe" "C:\Windows\SystemApps\ShellExperienceHost_cw5n1h2txyewy"
move /Y "C:\Oneclick Backup\Search\taskhostw.exe" "C:\Windows\System32"
reg add "HKLM\System\CurrentControlSet\Services\UdkUserSvc" /v "Start" /t REG_DWORD /d "3" /f
```
3. Install [Microsoft Edge](https://www.microsoft.com/en-us/edge/download?form=MA13FJ) in order to get web2 back which is **required** to use search on 24H2+.
4. Unintall Openshell.
5. Restart you're PC!

> [!NOTE]
> If Process Destroyer Extreme was done, TrustInstaller must be restored differently!
> 1. Go to file explorer and find ```"C:\Oneclick Tools\Process Destroyer\Revert\Trusted_Installer_Backup.reg"```. and open it up.
> 2. Then restart and follow step 2 above.

# 15. Nvidia Tweaks
1. Open CMD as admin and paste the following.
```
sc config TrustedInstaller start=demand
```
2. Go to file explorer and find ```C:\Oneclick Backup\GPU``` and confirm there's a ```Nvidia.reg``` file.
3. If it, open ```C:\Oneclick Logs\Oneclick Log.txt``` and copy the Nvidia GPU Reg Path.
4. Then type CMD in the Address Bar, then click run and paste the following commands.
```bat
:: Delete Tweaked Reg Command
reg delete "Your Nvidia GPU Reg Path" /f

:: Exmple of a Nvidia GPU Reg Path
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /f
```
5. Now paste the following.
 ```
reg delete "HKCR\DesktopBackground\Shell\NvidiaContainer" /f
```
6. Drag and run ```Nvidia.reg``` into [Nsudo](https://github.com/QuakedK/Oneclick/raw/refs/heads/main/Downloads/V8.0/NSudoLG.exe).
7. Restart you're PC!

# 16. Nvidia Shadowplay/Clipping
**Revert Method 1** (If Nvidia GPU Tweaks were done)
1. Open right-click the destop and hover over ```NvidiaContainer```.
2. Click ```Nvidia Container ON```.

**Revert Method 2** (If  Nvidia GPU Tweaks weren't done)
1. Open CMD as admin and paste the following.
```
sc config NVDisplay.ContainerLocalSystem start=auto >nul 2>&1
sc start NVDisplay.ContainerLocalSystem >nul 2>&1
sc config NvContainerLocalSystem start=auto >nul 2>&1
sc start NvContainerLocalSystem >nul 2>&1
```

# 17. AMD GPU Tweaks
1. Open CMD as admin and paste the following.
```
sc config TrustedInstaller start=demand
```
2. Go to file explorer and find ```C:\Oneclick Backup\GPU``` and confirm there's a ```AMD.reg``` file.
3. If it, open ```C:\Oneclick Logs\Oneclick Log.txt``` and copy the AMD GPU Reg Path.
4. Then type CMD in the Address Bar, then click run and paste the following commands.
```bat
:: Delete Tweaked Reg Command
reg delete "Your AMD GPU Reg Path" /f

:: Exmple of a AMD GPU Reg Path
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /f
```
5. Drag and run ```AMD.reg``` into [Nsudo](https://github.com/QuakedK/Oneclick/raw/refs/heads/main/Downloads/V8.0/NSudoLG.exe).
6. Restart you're PC!

# 18. BCDEdit
1. Open CMD as admin and paste the following.
```
bcdedit /deletevalue useplatformclock 

bcdedit /deletevalue useplatformtick 

bcdedit /deletevalue disabledynamictick
```
2. Restart you're PC!

# 19. Powersettings
1. Open CMD as admin and paste the following.
```
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d "1" /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabledDefault" /t REG_DWORD /d "1" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows" /v "TimerCoalescing" /f

reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PlatformAoAcOverride" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PlatformRoleOverride" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MSDisabled" /f
```
2. Restart you're PC!

# 20. Kernal Tweaks
1. Open CMD as admin and paste the following.
```
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v "DynamicHeteroCpuPolicyMask" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v "DefaultDynamicHeteroCpuPolicy" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v "DynamicHeteroCpuPolicyImportant" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v "DynamicHeteroCpuPolicyImportantShort" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v "DynamicHeteroCpuPolicyImportantPriority" /f

reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v "SerializeTimerExpiration" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "TimerCheckFlags" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "GlobalTimerResolutionRequests" /f
```
2. Restart you're PC!

# 21. Priority Separation
1. Open CMD as admin and paste the following.
```
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "2" /f 
```
2. Restart you're PC!

# 22. DPC Checker
1. Open CMD as admin and paste the following.
```
taskkill /IM dpclat.exe /F
rd /s /q "C:\Oneclick Tools\DPC Checker"
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "DPC Checker" /f

```
2. Restart you're PC!

# 23. Timer Resolution
1. Open CMD as admin and paste the following.
```
taskkill /IM SetTimerResolution.exe /F
rd /s /q "C:\Oneclick Tools\Timer Resolution"
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "TimerResolution" /f
```
2. Restart you're PC!

# 24. Power Plan
1. Search "Edit Power Plan" and select it.
2. Click "Power Options" at the top.
3. Select a different Power Plan.
4. Click "Change Plan Settings" on the Quaked on and click "Delete this plan."

# 25. Device Manager



