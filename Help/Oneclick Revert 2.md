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
sc config TrustedInstalller start=demand
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
sc config TrustedInstalller start=demand
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
sc config TrustedInstalller start=demand
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
sc config TrustedInstalller start=demand
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
sc config TrustedInstalller start=demand
```
2. Go to file explorer and find ```C:\Oneclick Backup\Services``` and confirm there's a ```Services.reg``` file.
3. Now open [Nsudo](https://github.com/QuakedK/Oneclick/raw/refs/heads/main/Downloads/V8.0/NSudoLG.exe) and Enable All Privileges.
4. Drag and run ```Services.reg``` into [Nsudo](https://github.com/QuakedK/Oneclick/raw/refs/heads/main/Downloads/V8.0/NSudoLG.exe).
5. Restart you're PC!

> [!NOTE]
> If Process Destroyer Extreme was done, TrustInstaller must be restored differently!
> 1. Go to file explorer and find ```"C:\Oneclick Tools\Process Destroyer\Revert\Trusted_Installer_Backup.reg"```. and open it up.
> 2. Then restart and follow step 2 above.

# 8. Auto Graphics Preferences, Priority and FSO
1. Open CMD as admin and paste the following.
```
sc config TrustedInstalller start=demand
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

# 9. LockApp
1. Open CMD as admin and paste the following.
```
sc config TrustedInstalller start=demand
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

# 10. SmartScreen
