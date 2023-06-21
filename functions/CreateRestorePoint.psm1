# Create a Restore Point
Function CreateRestorePoint {
	Write-Output "Creating Restore Point incase something bad happens"
	Enable-ComputerRestore -Drive "C:\"
	Checkpoint-Computer -Description "GamingDebloter10RestorePoint" -RestorePointType "MODIFY_SETTINGS"
}
