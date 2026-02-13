@echo off

:: Optional Features.
:Optional_Features
cls
color A
chcp 65001 >nul 2>&1
echo ╔════════════════════════════════╗
echo ║ ✅ Enabling Optional Features. ║
echo ╚════════════════════════════════╝
timeout 1 > nul
chcp 437 >nul
Powershell -NoProfile -Command ^
Enable-WindowsOptionalFeature -Online -FeatureName Client-ProjFS -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName DirectPlay -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName HypervisorPlatform -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ApplicationDevelopment -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ApplicationInit -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ASP -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ASPNET -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ASPNET45 -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-BasicAuthentication -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-CGI -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-CommonHttpFeatures -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-CustomLogging -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-DefaultDocument -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-DirectoryBrowsing -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-FTPExtensibility -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-FTPServer -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-FTPSvc -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HealthAndDiagnostics -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HostableWebCore -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpCompressionDynamic -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpCompressionStatic -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpErrors -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpLogging -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpRedirect -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpTracing -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-IIS6ManagementCompatibility -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-IPSecurity -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ISAPIExtensions -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ISAPIFilter -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-LegacyScripts -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-LoggingLibraries -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ManagementConsole -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ManagementScriptingTools -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ManagementService -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-Metabase -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-NetFxExtensibility -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-NetFxExtensibility45 -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-Performance -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-RequestFiltering -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-RequestMonitor -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-Security -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ServerSideIncludes -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-StaticContent -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-URLAuthorization -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebDAV -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServer -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServerManagementTools -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServerRole -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebSockets -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WMICompatibility -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName LegacyComponents -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName MediaPlayback -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName MicrosoftWindowsPowershellV2 -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName MicrosoftWindowsPowershellV2Root -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName MSMQ-Container -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName MSMQ-DCOMProxy -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName MSMQ-HTTP -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName MSMQ-Multicast -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName MSMQ-Server -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName MSMQ-Triggers -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName MSRDC-Infrastructure -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName NetFx3 -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName Printing-Foundation-Features -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName Printing-Foundation-InternetPrinting-Client -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName Printing-Foundation-LPDPrintService -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName Printing-Foundation-LPRPortMonitor -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName Printing-PrintToPDFServices-Features -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName Printing-XPSServices-Features -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName SimpleTCP -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName SMB1Protocol -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName SMB1Protocol-Client -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName SMB1Protocol-Deprecation -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName SMB1Protocol-Server -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName TelnetClient -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName TFTP -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName TIFFIFilter -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName WAS-ConfigurationAPI -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName WAS-NetFxEnvironment -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName WAS-ProcessModel -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName WAS-WindowsActivationService -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName WCF-HTTP-Activation -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName WCF-HTTP-Activation45 -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName WCF-MSMQ-Activation45 -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName WCF-NonHTTP-Activation -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName WCF-Pipe-Activation45 -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName WCF-TCP-Activation45 -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName Windows-Identity-Foundation -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName WindowsMediaPlayer -NoRestart -ErrorAction SilentlyContinue; ^
Enable-WindowsOptionalFeature -Online -FeatureName WorkFolders-Client -NoRestart -ErrorAction SilentlyContinue
chcp 65001 >nul 2>&1

echo ✔  Optional Features enabled successfully.
pause