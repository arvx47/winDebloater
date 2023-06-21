$service = New-Object -com Schedule.Service
$service.Connect()
$task = $service.NewTask(0)
$task.Settings.DisallowStartIfOnBatteries = $false
$trigger = $task.Triggers.Create(9)
$trigger = $task.Triggers.Create(11)
$trigger.StateChange = 8
$action = $task.Actions.Create(0)
$action.Path = "reg.exe"
$action.Arguments = "add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\SessionData /t REG_DWORD /v AllowLockScreen /d 0 /f"
$service.GetFolder("\").RegisterTaskDefinition("Disable LockScreen", $task, 6, "NT AUTHORITY\SYSTEM", $null, 4) | Out-Null