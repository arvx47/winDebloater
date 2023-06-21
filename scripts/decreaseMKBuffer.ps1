Write-Output "Decreasing mouse and keyboard buffer sizes..."
$errpref = $ErrorActionPreference #save actual preference
$ErrorActionPreference = "silentlycontinue"
New-Item -Path "HKLM:\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" | Out-Null -ErrorAction SilentlyContinue
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" -Name "MouseDataQueueSize" -Type DWord -Value 0x00000010
New-Item -Path "HKLM:\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" | Out-Null -ErrorAction SilentlyContinue
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" -Name "KeyboardDataQueueSize" -Type DWord -Value 0x00000010
$ErrorActionPreference = $errpref #restore previous preference