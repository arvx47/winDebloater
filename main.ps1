Import-Module './functions/*.psm1'

$tweaks = @()

$jsonName = "./config/tweaks.jsonc"
$jsonfile = (Get-Content $jsonName) -replace '^\s*//.*' | Out-String | ConvertFrom-Json

$jsonfile.PSObject.Properties | ForEach-Object {
	$tweak = $psitem.value
	$psitem.name
	# Invoke-WinUtilTweaks $tweak
}

Get-Test