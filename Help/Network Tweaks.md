# Network Tweaks

<img width="1110" height="616" alt="image" src="https://github.com/user-attachments/assets/d7fd5b64-d06d-469d-ab4a-71b1713fcbd2" />

# Is Network Tweaks Recommended?
> [!CAUTION]
> No Network Tweaks Tweaks **aren't recommended** as usage of the Network Tweaks may negatively, your networks speed or performance.
> You may also lose Network Connection, as as all network adapters are different.

# Revert 
**Note: There may be more NetworkBackup.reg files**
1. Open CMD as admin and paste the following.
```
sc config TrustedInstaller start=demand
```
2. Go to file explorer and find ```C:\Oneclick Backup\Network``` and confirm there's a ```NetworkBackup1.reg``` file or possibly more.
3. Now open [Nsudo](https://github.com/QuakedK/Oneclick/raw/refs/heads/main/Downloads/V8.0/NSudoLG.exe) and Enable All Privileges.
4. Then type CMD in the Address Bar, then click run and paste the following commands.
```bat
reg import "C:\Oneclick Backup\Network\NetworkBackup1.reg"
```
5. Restart you're PC!
