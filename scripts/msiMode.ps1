$errpref = $ErrorActionPreference #save actual preference
$ErrorActionPreference = "silentlycontinue"
$GPUIDS = @(
    (wmic path win32_VideoController get PNPDeviceID | Select-Object -Skip 2 | Format-List | Out-String).Trim()
)
foreach ($GPUID in $GPUIDS) {
    $CheckDeviceDes = (Get-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Enum\$GPUID").DeviceDesc
} 
if(($CheckDeviceDes -like "*GTX*") -or ($CheckDeviceDes -like "*RTX*") -or ($CheckDeviceDes -like "*AMD*")) {
    Write-Output "GTX/RTX/AMD Compatible Card Found! Enabling MSI Mode..."
    New-Item -Path "HKLM:\SYSTEM\CurrentControlSet\Enum\$GPUID\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties\" -Force | Out-Null
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Enum\$GPUID\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties\" -Name "MSISupported" -Type DWord -Value 1
} 
else {
    Write-Output "No GTX/RTX/AMD Compatible Card Found! Skiping..."
}
$ErrorActionPreference = $errpref #restore previous preference	