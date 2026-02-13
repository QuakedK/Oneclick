@echo off

:: Device Manager
:Device_Manager
cls
color D
chcp 65001 >nul 2>&1
echo ╔═════════════════════════════════════╗
echo ║ ✅ Enabling Device Manager Devices. ║
echo ╚═════════════════════════════════════╝
setlocal enabledelayedexpansion

:: Emoji Variables.
set "EmojiCheckmark=✔"
set "EmojiX=❌"

:: Device Names.
set "Device[0]=ACPI Processor Aggregator"
set "Device[1]=ACPI Thermal Zone"
set "Device[2]=ACPI Wake Alarm"
set "Device[3]=AMD Controller Emulation"
set "Device[4]=AMD Crash Defender"
set "Device[5]=AMD PSP"
set "Device[6]=Bluetooth Device (Personal Area Network)"
set "Device[7]=Bluetooth Device (RFCOMM Protocol TDI)"
set "Device[8]=Composite Bus Enumerator"
set "Device[9]=Direct memory access controller"
set "Device[10]=High Precision Event Timer"
set "Device[11]=Intel Management Engine"
set "Device[12]=Intel(R) Dynamic Application Loader Host Interface"
set "Device[13]=Intel(R) Management Engine Interface #1"
set "Device[14]=Intel(R) Management Engine WMI Provider"
set "Device[15]=Intel(R) Platform Monitoring Technology Device"
set "Device[16]=Intel(R) SMBus - 7AA3"
set "Device[17]=Intel(R) SPI (Flash) Controller - 7AA4"
set "Device[18]=Intel(R) Wireless Bluetooth(R)"
set "Device[19]=Microsoft Bluetooth Enumerator"
set "Device[20]=Microsoft Bluetooth LE Enumerator"
set "Device[21]=Microsoft Device Association Root Enumerator"
set "Device[22]=Microsoft GS Wavetable Synth"
set "Device[23]=Microsoft Hyper-V Virtualization Infrastructure Driver"
set "Device[24]=Microsoft Hypervisor Service"
set "Device[25]=Microsoft Kernel Debug Network Adapter"
set "Device[26]=Microsoft Print to PDF"
set "Device[27]=Microsoft Radio Device Enumeration Bus"
set "Device[28]=Microsoft RRAS Root Enumerator"
set "Device[29]=Microsoft Virtual Drive Enumerator"
set "Device[30]=Microsoft Windows Management Interface for ACPI"
set "Device[31]=NDIS Virtual Network Adapter Enumerator"
set "Device[32]=NVIDIA High Definition Audio"
set "Device[33]=Numeric Data Processor"
set "Device[34]=Programmable interrupt controller"
set "Device[35]=Remote Desktop Device Redirector Bus"
set "Device[36]=Resource Hub proxy device"
set "Device[37]=Root Print Queue"
set "Device[38]=System Timer"
set "Device[39]=UMBus Root Bus Enumerator"
set "Device[40]=WAN Miniport (IKEv2)"
set "Device[41]=WAN Miniport (IP)"
set "Device[42]=WAN Miniport (IPv6)"
set "Device[43]=WAN Miniport (L2TP)"
set "Device[44]=WAN Miniport (Network Monitor)"
set "Device[45]=WAN Miniport (PPPOE)"
set "Device[46]=WAN Miniport (PPTP)"
set "Device[47]=WAN Miniport (SSTP)"
chcp 437 >nul

:: Get all existing devices in one PS call.
for /f "delims=" %%D in ('Powershell -NoProfile -Command "Get-PnpDevice | Select-Object -ExpandProperty FriendlyName"') do (
    set "Existing[%%D]=1"
)

:: Disable existing devices.
for /L %%i in (0,1,47) do (
    if defined Existing[!Device[%%i]!] (
        chcp 437 >nul
        Powershell -NoProfile -Command "try { Get-PnpDevice -FriendlyName '!Device[%%i]!' -ErrorAction Stop | Enable-PnpDevice -Confirm:$false -ErrorAction Stop; exit 0 } catch { exit 1 }"
        if !ERRORLEVEL! EQU 0 (
            chcp 65001 >nul 2>&1
            echo !EmojiCheckmark!  Enabled: !Device[%%i]!.
        )
    )
)
endlocal
chcp 65001 >nul 2>&1

echo ✔  Devices re-enabled successfully.
pause