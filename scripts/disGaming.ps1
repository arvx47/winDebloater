Write-Output "Stopping and disabling Unnessessary services for gaming..."
$errpref = $ErrorActionPreference #save actual preference
$ErrorActionPreference = "silentlycontinue"
Stop-Service "wisvc" -WarningAction SilentlyContinue
Set-Service "wisvc" -StartupType Disabled
Stop-Service "MapsBroker" -WarningAction SilentlyContinue
Set-Service "MapsBroker" -StartupType Disabled
Stop-Service "UmRdpService" -WarningAction SilentlyContinue
Set-Service "UmRdpService" -StartupType Disabled
Stop-Service "TrkWks" -WarningAction SilentlyContinue
Set-Service "TrkWks" -StartupType Disabled
Stop-Service "TermService" -WarningAction SilentlyContinue
Set-Service "TermService" -StartupType Disabled
Stop-Service "PcaSvc" -WarningAction SilentlyContinue
Set-Service "PcaSvc" -StartupType Disabled
$ErrorActionPreference = $errpref #restore previous preference