Write-Output "Enabling password complexity and maximum age requirements..."
$tmpfile = New-TemporaryFile
secedit /export /cfg $tmpfile /quiet
	(Get-Content $tmpfile).Replace("PasswordComplexity = 0", "PasswordComplexity = 1").Replace("MaximumPasswordAge = -1", "MaximumPasswordAge = 42") | Out-File $tmpfile
secedit /configure /db "$env:SYSTEMROOT\security\database\local.sdb" /cfg $tmpfile /areas SECURITYPOLICY | Out-Null
Remove-Item -Path $tmpfile