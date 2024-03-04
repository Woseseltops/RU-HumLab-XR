schtasks /run /tn "Log out xrlab user"
powershell.exe -ExecutionPolicy Bypass -File ".\varjo_experiment_mode_ps.ps1"