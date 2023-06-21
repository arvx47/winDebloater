Write-Output "Uninstalling Hyper-V..."
If ((Get-WmiObject -Class "Win32_OperatingSystem").Caption -like "*Server*") {
    Uninstall-WindowsFeature -Name "Hyper-V" -IncludeManagementTools -WarningAction SilentlyContinue | Out-Null
}
Else {
    Disable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V-All" -NoRestart -WarningAction SilentlyContinue | Out-Null
}