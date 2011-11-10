REM Is the proxy on? Turn it off.
regedit.exe /s "c:\proxy-off.reg"

REM Is the proxy off? Turn it on.
REG QUERY HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings /v ProxyEnable
regedit.exe /s "c:\proxy-on.reg"
