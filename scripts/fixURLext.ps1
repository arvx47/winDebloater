Write-Host "Fixing White Games Shortcuts created by game launchers...."
choco install -y setuserfta | Out-Null
Start-Sleep -s 5
Push-Location
set-location "$env:ProgramData\chocolatey\lib\setuserfta\tools\SetUserFTA\"
SetUserFTA.exe del .url | Out-Null
SetUserFTA.exe .url, InternetShortcut | Out-Null
Pop-Location
choco uninstall -y setuserfta | Out-Null