Write-Output "Disabling Microsoft Store and WSAPPX Service..."
$errpref = $ErrorActionPreference #save actual preference
$ErrorActionPreference = "silentlycontinue"
Get-AppxPackage "Microsoft.DesktopAppInstaller" | Remove-AppxPackage -ErrorAction SilentlyContinue
Get-AppxPackage "Microsoft.WindowsStore" | Remove-AppxPackage -ErrorAction SilentlyContinue
New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\WindowsStore" -Force | Out-Null
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\WindowsStore" -Name "DisableStoreApps" -Type DWord -Value 1 -ErrorAction SilentlyContinue
Set-ItemProperty -Path "HKLM:\SYSTEM\ControlSet001\Services\AppXSvc" -Name "Start" -Type DWord -Value 4 -ErrorAction SilentlyContinue
$ErrorActionPreference = $errpref #restore previous preference