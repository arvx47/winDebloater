Write-Output "Disabling High Precision Event Timer..."
$errpref = $ErrorActionPreference #save actual preference
$ErrorActionPreference = "silentlycontinue"
Invoke-WebRequest -Uri "https://git.io/JkrLn" -OutFile "$Env:windir\system32\SetTimerResolutionService.exe" -ErrorAction SilentlyContinue
New-Service -name "SetTimerResolutionService" -BinaryPathName "$Env:windir\system32\SetTimerResolutionService.exe" -StartupType Automatic | Out-Null -ErrorAction SilentlyContinue
bcdedit /set x2apicpolicy Enable | Out-Null
bcdedit /set configaccesspolicy Default | Out-Null
bcdedit /set MSI Default | Out-Null
bcdedit /set usephysicaldestination No | Out-Null
bcdedit /set usefirmwarepcisettings No | Out-Null
bcdedit /deletevalue useplatformclock | Out-Null
bcdedit /set disabledynamictick yes | Out-Null
bcdedit /set useplatformtick Yes | Out-Null
bcdedit /set tscsyncpolicy Enhanced | Out-Null
bcdedit /timeout 10 | Out-Null
bcdedit /set nx optout | Out-Null
bcdedit /set bootux disabled | Out-Null
bcdedit /set quietboot yes | Out-Null
bcdedit /set { globalsettings } custom:16000067 true | Out-Null
bcdedit /set { globalsettings } custom:16000069 true | Out-Null
bcdedit /set { globalsettings } custom:16000068 true | Out-Null
wmic path Win32_PnPEntity where "name='High precision event timer'" call disable | Out-Null
$ErrorActionPreference = $errpref #restore previous preference