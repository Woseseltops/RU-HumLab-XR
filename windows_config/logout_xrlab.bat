netsh interface set interface "Ethernet" admin=disabled
netsh interface set interface "Wi-Fi" admin=disabled
for /f "tokens=2" %%a in ('query user ^| findstr /i "\<xrlab\>"') do (
	logoff %%a
)
powershell.exe -ExecutionPolicy Bypass -File ".\airplanemode.ps1"