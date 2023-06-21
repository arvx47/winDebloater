Write-Output "Enabling and Activating Bitsum Highest Performance Power Plan..."
Invoke-WebRequest -Uri "https://git.io/JsWhn" -OutFile "$Env:windir\system32\Bitsum-Highest-Performance.pow" -ErrorAction SilentlyContinue
powercfg -import "$Env:windir\system32\Bitsum-Highest-Performance.pow" e6a66b66-d6df-666d-aa66-66f66666eb66 | Out-Null
powercfg -setactive e6a66b66-d6df-666d-aa66-66f66666eb66 | Out-Null