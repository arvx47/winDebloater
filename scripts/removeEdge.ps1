# Stop Edge Task
Stop-Process -Name "msedge" -Force -ErrorAction SilentlyContinue

# Uninstall - Edge
$edgePath = "C:\Program Files (x86)\Microsoft\Edge\Application"
if (Test-Path $edgePath) {
    $edgeVersions = Get-ChildItem $edgePath -Directory
    foreach ($version in $edgeVersions) {
        $installerPath = Join-Path $version.FullName "Installer"
        if (Test-Path $installerPath) {
            Set-Location -Path $installerPath | Out-Null
            if (Test-Path "setup.exe") {
                Write-Host "Removing Microsoft Edge"
                Start-Process -Wait -FilePath "setup.exe" -ArgumentList "--uninstall --system-level --force-uninstall"
            }
        }
    }
}

# Uninstall - EdgeWebView
$edgeWebViewPath = "C:\Program Files (x86)\Microsoft\EdgeWebView\Application"
if (Test-Path $edgeWebViewPath) {
    $edgeWebViewVersions = Get-ChildItem $edgeWebViewPath -Directory
    foreach ($version in $edgeWebViewVersions) {
        $installerPath = Join-Path $version.FullName "Installer"
        if (Test-Path $installerPath) {
            Set-Location -Path $installerPath | Out-Null
            if (Test-Path "setup.exe") {
                Write-Host "Removing EdgeWebView"
                Start-Process -Wait -FilePath "setup.exe" -ArgumentList "--uninstall --msedgewebview --system-level --force-uninstall"
            }
        }
    }
}

# Delete Edge desktop icon, from all users
$users = Get-ChildItem -Path "C:\Users" -Directory
foreach ($user in $users) {
    $desktopPath = Join-Path -Path $user.FullName -ChildPath "Desktop"
    Remove-Item -Path "$desktopPath\edge.lnk" -Force -ErrorAction SilentlyContinue
    Remove-Item -Path "$desktopPath\Microsoft Edge.lnk" -Force -ErrorAction SilentlyContinue
}

# Delete additional files
if (Test-Path "C:\Windows\System32\MicrosoftEdgeCP.exe") {
    $edgeFiles = Get-ChildItem -Path "C:\Windows\System32" -Filter "MicrosoftEdge*" -File
    foreach ($file in $edgeFiles) {
        $filePath = Join-Path -Path $file.Directory.FullName -ChildPath $file.Name
        takeown.exe /F "$filePath" > $null
        icacls.exe "$filePath" /inheritance:e /grant "$env:UserName:(OI)(CI)F" /T /C > $null
        Remove-Item -Path $filePath -Force -ErrorAction SilentlyContinue
    }
}