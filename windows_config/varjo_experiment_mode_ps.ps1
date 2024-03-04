Import-Module -Name AudioDeviceCmdlets
$deviceName = 'VoiceMeeter Input (VB-Audio VoiceMeeter VAIO)'
$device = Get-AudioDevice -List | Where-Object { $_.Name -eq $deviceName }
Set-AudioDevice -ID $device.ID
Set-AudioDevice -PlaybackVolume 100
$deviceName = 'VoiceMeeter Output (VB-Audio VoiceMeeter VAIO)'
$device = Get-AudioDevice -List | Where-Object { $_.Name -eq $deviceName }
Set-AudioDevice -ID $device.ID
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.SendKeys]::SendWait('+{F1}')