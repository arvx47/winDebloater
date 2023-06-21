$errpref = $ErrorActionPreference #save actual preference
$ErrorActionPreference = "silentlycontinue"
$NetworkIDS = @(
    (Get-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\*").PSChildName
)
foreach ($NetworkID in $NetworkIDS) {
    Write-Output "Disabling Nagles Algorithm..."
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\$NetworkID" -Name "TcpAckFrequency" -Type DWord -Value 1
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\$NetworkID" -Name "TCPNoDelay" -Type DWord -Value 1
}
$ErrorActionPreference = $errpref #restore previous preference