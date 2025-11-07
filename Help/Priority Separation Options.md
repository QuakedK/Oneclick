# Priority Separation Options

<img width="749" height="382" alt="image" src="https://github.com/user-attachments/assets/783ba229-8cb8-41e0-9207-9940ca712d05" />

```
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "Value" /f
```

# Whats Priority Separation?

Priority Separation controls how Windows allocates CPU time between foreground (active) applications and background processes.

Foreground: The program you are actively using (game, browser, editor, etc.)

Background: Other running programs (services, updates, background apps)

Windows uses thread scheduling quanta, the amount of time a thread can run before the CPU may switch to another thread. Changing/Tweaking Priority Separation changes long foreground threads get vs. background threads.

# Which Priority Separation Value Should You Use?

> [!NOTE]
> Results will vary from person to person, as there isn't necessarily a definitive good value.

&nbsp;1. FPS - 42 Decimal - 2A Hexadecimal: 

This option is more FPS focused, generally the most safe and recommended option, tended for a majority of users!

&nbsp;2. Latency - 36 Decimal - 24 Hexadecimal

This option is more Latency focused, generally for more advanced user wanting lower latency.
   
&nbsp;3. Balanced - 26 Decimal - 1A Hexadecimal

This option is more Balanced focused.
