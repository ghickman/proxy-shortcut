SET is_proxy_enabled=REG QUERY HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings /v ProxyEnable
echo is_proxy_enabled
REM Is the proxy on? Turn it off.
regedit.exe /s "c:\proxy-off.reg"

REM Is the proxy off? Turn it on.
if is_proxy_enabled (
    regedit.exe /s "c:\proxy-on.reg"
)

