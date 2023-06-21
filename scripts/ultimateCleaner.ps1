Write-Host "Running Ultimate Cleaner => Temp folders & Flush DNS + Reset IP...."
cmd /c 'netsh winsock reset 2>nul' >$null
cmd /c 'netsh int ip reset 2>nul' >$null
cmd /c 'ipconfig /release 2>nul' >$null
cmd /c 'ipconfig /renew 2>nul' >$null
cmd /c 'ipconfig /flushdns 2>nul' >$null
cmd /c 'echo Flush DNS + IP Reset Completed Successfully!'
cmd /c 'echo Clearing Temp folders....'
cmd /c 'del /f /s /q %systemdrive%\*.tmp 2>nul' >$null
cmd /c 'del /f /s /q %systemdrive%\*._mp 2>nul' >$null
cmd /c 'del /f /s /q %systemdrive%\*.log 2>nul' >$null
cmd /c 'del /f /s /q %systemdrive%\*.gid 2>nul' >$null
cmd /c 'del /f /s /q %systemdrive%\*.chk 2>nul' >$null
cmd /c 'del /f /s /q %systemdrive%\*.old 2>nul' >$null
cmd /c 'del /f /s /q %systemdrive%\recycled\*.* 2>nul' >$null
cmd /c 'del /f /s /q %windir%\*.bak 2>nul' >$null
cmd /c 'del /f /s /q %windir%\prefetch\*.* 2>nul' >$null
cmd /c 'del /f /q %userprofile%\cookies\*.* 2>nul' >$null
cmd /c 'del /f /q %userprofile%\recent\*.* 2>nul' >$null
cmd /c 'del /f /s /q %userprofile%\Local Settings\Temporary Internet Files\*.* 2>nul' >$null
$errpref = $ErrorActionPreference #save actual preference
$ErrorActionPreference = "silentlycontinue"
Get-ChildItem -Path "$env:temp" -Exclude "dmtmp" | foreach ($_) {
    "CLEANING :" + $_.fullname
    Remove-Item $_.fullname -Force -Recurse
    "CLEANED... :" + $_.fullname
}
$ErrorActionPreference = $errpref #restore previous preference
cmd /c 'del /f /s /q %userprofile%\recent\*.* 2>nul' >$null
cmd /c 'del /f /s /q %windir%\Temp\*.* 2>nul' >$null
cmd /c 'echo Temp folders Cleared Successfully!'