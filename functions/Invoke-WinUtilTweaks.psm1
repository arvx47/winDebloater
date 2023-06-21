function Invoke-WinUtilTweaks {
	param (
		$tweak
	)

	if ($tweak.scheduledTask) {
		$tweak.scheduledTask | ForEach-Object {
			Set-WinUtilScheduledTask -Name $psitem.name -State $psitem.state
		}
	}
	if ($tweak.service) {
		$tweak.service | ForEach-Object {
			Set-WinUtilService -Name $psitem.name -StartupType $psitem.startupType
		}
	}
	if ($tweak.registry) {
		$tweak.registry | ForEach-Object {
			Set-WinUtilRegistry -Name $psitem.name -Path $psitem.path -Type $psitem.type -Value $psitem.value
		}
	}
	if ($tweak.scriptInline) {
		$tweak.scriptInline | ForEach-Object {
			$Scriptblock = [scriptblock]::Create($psitem)
			Invoke-WinUtilScript -ScriptBlock $scriptblock -Name $tweak.description
		}
	}
	if ($tweak.script) {
		$tweak.script | ForEach-Object {
			$Scriptblock = [scriptblock]::Create($psitem)
			Invoke-WinUtilScript -ScriptBlock $scriptblock -Name $tweak.description
		}
	}
	if ($tweak.appx) {
		$tweak.appx | ForEach-Object {
			Remove-WinUtilAPPX -Name $psitem
		}
	}
}