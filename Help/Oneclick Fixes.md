# Oneclick Fixes
Because Oneclick disables all services, the users programs, apps, etc are bound to break or behave weirdly.
On this Github page, will go over some simple and easy fixes!

# Wi-Fi
As explained in the [Unsupported List](https://github.com/QuakedK/Oneclick/edit/main/Unsupported%20Features.md#wifi), Wi-Fi is natively unsupported/disabled. However, it can be easily re-enabled by running the Wi-Fi Fixer located in the Extras or End Section of Oneclick.

<img width="978" height="512" alt="image" src="https://github.com/user-attachments/assets/7e1c261f-de17-484c-8651-14a8db7cf702" />

Note: If you created a Restore Point you can just use that <3

&nbsp;1. Simply rerun Oneclick.

&nbsp;2. Once you reach the End\Extras, select Fixers and then choose the Wi-Fi fixer.

> [!NOTE]
> Users who ran [Process Destroyer](https://github.com/QuakedK/Process-Destroyer), cannot simply use the Wi-Fi Fixer as Process Destroyer contains it's own unsupported list and disaabled features.
> However Process Destroyer can be reverted, which would allow the Wi-Fi Fixer to work. --> [Process Destroyer Revert](https://discord.com/channels/1315000415409934346/1315000415900794922/1341719257674682399)

# Epic Games Laucnher
Notability ever since the Epic Games Laucnher was updated or since Epic Online Services was introduced, the launcher tends to get stuck on updating.  (Included in Oneclick, -> Extara's -> Fixers) 

**Manual Fix:** 

&nbsp;1. Simple open CMD as admin and paste the following ↓
```
sc config "EpicGamesUpdater" start=auto 
sc config "EpicOnlineServices" start=auto 
```
&nbsp;2. Restart your pc!

# Rockstar Games Laucnher
Similar the Epic Games Laucnher fix, setting Rockstar Games to auto will also fix it. (Included in Oneclick, -> Extara's -> Fixers) 

**Manual Fix:**

&nbsp;1. Simple open CMD as admin and paste the following ↓
```
sc config "Rockstar Service" start=auto
```
&nbsp;2. Restart your pc!

# Cloudflare Warp
(Included in Oneclick, -> Extara's -> Fixers) 

**Manual Fix:**

&nbsp;1. Simple open CMD as admin and paste the following ↓
```
sc config "WlanSvc" start=auto 
sc config "Wcmsvc" start=auto 
```
&nbsp;2. Restart your pc!

# Monitor Switching Back to 60hz
Seems to be related to 24H2 and onwards.

**Manual Fix:**

&nbsp;1. Simple open CMD as admin and paste the following ↓
```
sc config DispBrokerDesktopSvc start=auto 
```
&nbsp;2. Restart your pc!

# Restore Point
Oneclick Automatically runs [Update Disabler](https://github.com/QuakedK/Update-Disabler), which seemingly breaks the normal way of restoring through Windows.

<img width="854" height="484" alt="image" src="https://github.com/user-attachments/assets/810cffaf-5ef0-4eae-aa81-878b5b11fc16" />

**Work Around:** 

&nbsp;1. Hold Shift and click Restart.

&nbsp;2. Once in Advanced Recovery, click Troubleshoot -> Advanced Options -> System Restore

Having trouble navigating in Advanced Recovery? Watch this excellent [tutorial!](https://youtube.com/shorts/v1K0BQoV34A?feature=share)

**Revert Update Disabler:** (Fixes the normal way of restoring through Windows)

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


