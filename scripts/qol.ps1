Write-Output "Enabling Quality of Life Tweaks..."
$errpref = $ErrorActionPreference #save actual preference
$ErrorActionPreference = "silentlycontinue"
	
# Disable annoying Get even more out of Windows
New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\UserProfileEngagement" -ErrorAction SilentlyContinue | Out-Null	
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\UserProfileEngagement" -Name "ScoobeSystemSettingEnabled" -Type DWord -Value 0 | Out-Null -ErrorAction SilentlyContinue
	
# Disable Hide Scroll bars
Set-ItemProperty -Path "HKCU:\Control Panel\Accessibility" -Name "DynamicScrollbars" -Type DWord -Value 0
	
# Disable smooth scrolling
Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "SmoothScroll" -Type DWord -Value 0
	
# Disable microsoft usertracking
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoInstrumentation" -Type DWord -Value 1
Remove-ItemProperty -Path "HKCU:\Software\Policies\Microsoft\Windows\Explorer" -Name "TaskbarNoMultimon" -ErrorAction SilentlyContinue
Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "TaskbarNoMultimon" -ErrorAction SilentlyContinue
	
# Show taskbar buttons only on taskbar where window is open
Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "MMTaskbarMode" -Type DWord -Value 2
	
# Restore previous preference
$ErrorActionPreference = $errpref 