@echo off

set proxy_enable=reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /f /d

if "%1" == "on" (
    %proxy_enable% 1
)

if "%1" == "off" (
    %proxy_enable% 0
)

