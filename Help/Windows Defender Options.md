# Windows Defender Options

<img width="978" height="512" alt="image" src="https://github.com/user-attachments/assets/b5bd5a78-f132-4f3e-9c4d-47660fb70983" />

# #1 Keep Windows Defender
This option is pretty self-explanatory and used for those who want to keep Windows Defender.

# #2 Disable Windows Defender
This option uses the program [Dcontrol](https://www.sordum.org/9480/defender-control-v2-1/), to fully disable Windows Defender.

Selecting Disable Windows Defender, will guide the user to disable Real Time Protection and Tamper Protection. Then it will automatically install and open Dcontol, guiding the user on how to properly use the program.

# #3 Known Issues After Not Disabling Windows Defender

> [!NOTE]
> Most of the following issues, are related to Oneclick's attempt to removing Windows telemetry.

1. Windows Security may break, causing a infinite black screen in the application. This issue may be fixed by resetting various [Policies](https://github.com/QuakedK/Downloads/blob/main/Win%20Defend%20Fix.bat) or running the [Security Health Setup](https://github.com/QuakedK/Downloads/blob/main/securityhealthsetup_e16941e14861a6d24750ecdf05c548189b33182a.exe).
2. Can't Disable Real Time Protection, if Windows Security is broken the user can't disable it. Real Time Protection is known to be aggressive and flag many program, stoping the user from downloading or running them until Real Time Protection is off.

# #4 Why Does Oneclick Recommend disabling Windows Defender?

Having Windows Defender enabled, can cause flag flagging, prevent changes from being made or cause issues later as explain in [Defender Issues](https://github.com/QuakedK/Oneclick/edit/main/Help/Windows%20Defender%20Options.md#3-known-issues-after-not-disabling-windows-defender). However, temporarily disabling Windows Defender can help users avoid these issues!

# #5 Does Windows Defender Impact Performance?

Windows Defender by default uses 150-400mb ram usage and anywhere from 1-5% of CPU Usage. These numbers maybe be dramatically higher depending on your CPU/System and Windows Version.

<img width="646" height="59" alt="image" src="https://github.com/user-attachments/assets/716b931f-7524-4dc0-b02e-553d109ad67c" />

However, to the normal individual these numbers may not look like anything out of note. But there's quite a bit more going on behind the hood, other than just high CPU usage or RAM usage. Windows Defender is constantly and aggressively monitoring any potential threats, which leads to substantial performance decreases. This doesn't necessarily mean disabling Windows Defender will give you some crazy fps results, but it must be noted there is some legitimate impact to system performance. unlike what the security-driven person will tell you. 

Now specifically in terms of latency is where Windows Defender actually makes a very messureable difference. Anyone legitimately trying to maximize system latency will need to disable Windows Defender because of the aggressive monitoring and telemetry task it does.



