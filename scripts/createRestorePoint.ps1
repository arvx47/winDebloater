Write-Output "Creating Restore Point incase something bad happens"
Enable-ComputerRestore -Drive "C:\"
Checkpoint-Computer -Description "RestorePointGamingDebloater" -RestorePointType "MODIFY_SETTINGS"