Write-Output "Enabling Microsoft Software Protection Platform Service and related Processes..."
Enable-ScheduledTask -TaskName "\Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTask" | Out-Null
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\sppsvc" -Name "Start" -Type DWord -Value 2 -ErrorAction SilentlyContinu