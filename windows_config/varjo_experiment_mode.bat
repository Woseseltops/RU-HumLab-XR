for /f "tokens=2" %%a in ('query user ^| findstr /i "\<xrlab\>"') do (
	logoff %%a
)