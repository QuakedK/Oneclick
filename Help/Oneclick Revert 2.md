# Oneclick Revert
Oneclick creates various different types of backups and here's how you can use them!

# 1. Restore Points
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
4. Drag and run ```HKCC.reg, HKCR.reg, HKCU.reg, HKLM.reg and HKC.reg``` all at one time.

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

> [!NOTE]
> If Process Destroyer Extreme was done, TrustInstaller must be restored differently!
> 1. Go to file explorer and find ```"C:\Oneclick Tools\Process Destroyer\Revert\Trusted_Installer_Backup.reg"```. and open it up.
> 2. Then restart and follow step 2 above.
