Write-Host "Installing Onedrive. Please Wait..."
Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\OneDrive" -Name "DisableFileSyncNGSC" -ErrorAction SilentlyContinue
%systemroot%\SysWOW64\OneDriveSetup.exe