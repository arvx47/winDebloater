Write-Output "Installing Hyper-V..."
If ((Get-WmiObject -Class "Win32_OperatingSystem").Caption -like "*Server*") {
    Install-WindowsFeature -Name "Hyper-V" -IncludeManagementTools -WarningAction SilentlyContinue | Out-Null
}
Else {
    Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V-All" -NoRestart -WarningAction SilentlyContinue | Out-Null
}