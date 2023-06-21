Add-Type @'
	using System; 
	using System.Runtime.InteropServices;
	using System.Drawing;
	public class DPI {  
		[DllImport("gdi32.dll")]
		static extern int GetDeviceCaps(IntPtr hdc, int nIndex);
		public enum DeviceCap {
			VERTRES = 10,
			DESKTOPVERTRES = 117
		} 
		public static float scaling() {
			Graphics g = Graphics.FromHwnd(IntPtr.Zero);
			IntPtr desktop = g.GetHdc();
			int LogicalScreenHeight = GetDeviceCaps(desktop, (int)DeviceCap.VERTRES);
			int PhysicalScreenHeight = GetDeviceCaps(desktop, (int)DeviceCap.DESKTOPVERTRES);
			return (float)PhysicalScreenHeight / (float)LogicalScreenHeight;
		}
	}
'@ -ReferencedAssemblies 'System.Drawing.dll'

$checkscreenscale = [Math]::round([DPI]::scaling(), 2) * 100
if ($checkscreenscale -eq "100") {
	Write-Output "Windows screen scale is Detected as 100%, Applying Mouse Fix for it..."
	$YourInputX = "00,00,00,00,00,00,00,00,C0,CC,0C,00,00,00,00,00,80,99,19,00,00,00,00,00,40,66,26,00,00,00,00,00,00,33,33,00,00,00,00,00"
	$YourInputY = "00,00,00,00,00,00,00,00,00,00,38,00,00,00,00,00,00,00,70,00,00,00,00,00,00,00,A8,00,00,00,00,00,00,00,E0,00,00,00,00,00"
	$RegPath = 'HKCU:\Control Panel\Mouse'
	$hexifiedX = $YourInputX.Split(',') | % { "0x$_" }
	$hexifiedY = $YourInputY.Split(',') | % { "0x$_" }
	Set-ItemProperty -Path "$RegPath" -Name "SmoothMouseXCurve" -Type Binary -Value (([byte[]]$hexifiedX))
	Set-ItemProperty -Path "$RegPath" -Name "SmoothMouseYCurve" -Type Binary -Value (([byte[]]$hexifiedY))
} 
elseif ($checkscreenscale -eq "125") {
	Write-Output "Windows screen scale is Detected as 125%, Applying Mouse Fix for it..."
	$YourInputX = "00,00,00,00,00,00,00,00,00,00,10,00,00,00,00,00,00,00,20,00,00,00,00,00,00,00,30,00,00,00,00,00,00,00,40,00,00,00,00,00"
	$YourInputY = "00,00,00,00,00,00,00,00,00,00,38,00,00,00,00,00,00,00,70,00,00,00,00,00,00,00,A8,00,00,00,00,00,00,00,E0,00,00,00,00,00"
	$RegPath = 'HKCU:\Control Panel\Mouse'
	$hexifiedX = $YourInputX.Split(',') | % { "0x$_" }
	$hexifiedY = $YourInputY.Split(',') | % { "0x$_" }
	Set-ItemProperty -Path "$RegPath" -Name "SmoothMouseXCurve" -Type Binary -Value (([byte[]]$hexifiedX))
	Set-ItemProperty -Path "$RegPath" -Name "SmoothMouseYCurve" -Type Binary -Value (([byte[]]$hexifiedY))
} 
elseif ($checkscreenscale -eq "150") {
	Write-Output "Windows screen scale is Detected as 150%, Applying Mouse Fix for it..."
	$YourInputX = "00,00,00,00,00,00,00,00,30,33,13,00,00,00,00,00,60,66,26,00,00,00,00,00,90,99,39,00,00,00,00,00,C0,CC,4C,00,00,00,00,00"
	$YourInputY = "00,00,00,00,00,00,00,00,00,00,38,00,00,00,00,00,00,00,70,00,00,00,00,00,00,00,A8,00,00,00,00,00,00,00,E0,00,00,00,00,00"
	$RegPath = 'HKCU:\Control Panel\Mouse'
	$hexifiedX = $YourInputX.Split(',') | % { "0x$_" }
	$hexifiedY = $YourInputY.Split(',') | % { "0x$_" }
	Set-ItemProperty -Path "$RegPath" -Name "SmoothMouseXCurve" -Type Binary -Value (([byte[]]$hexifiedX))
	Set-ItemProperty -Path "$RegPath" -Name "SmoothMouseYCurve" -Type Binary -Value (([byte[]]$hexifiedY))
} 
elseif ($checkscreenscale -eq "175") {
	Write-Output "Windows screen scale is Detected as 175%, Applying Mouse Fix for it..."
	$YourInputX = "00,00,00,00,00,00,00,00,60,66,16,00,00,00,00,00,C0,CC,2C,00,00,00,00,00,20,33,43,00,00,00,00,00,80,99,59,00,00,00,00,00"
	$YourInputY = "00,00,00,00,00,00,00,00,00,00,38,00,00,00,00,00,00,00,70,00,00,00,00,00,00,00,A8,00,00,00,00,00,00,00,E0,00,00,00,00,00"
	$RegPath = 'HKCU:\Control Panel\Mouse'
	$hexifiedX = $YourInputX.Split(',') | % { "0x$_" }
	$hexifiedY = $YourInputY.Split(',') | % { "0x$_" }
	Set-ItemProperty -Path "$RegPath" -Name "SmoothMouseXCurve" -Type Binary -Value (([byte[]]$hexifiedX))
	Set-ItemProperty -Path "$RegPath" -Name "SmoothMouseYCurve" -Type Binary -Value (([byte[]]$hexifiedY))
} 
elseif ($checkscreenscale -eq "200") {
	Write-Output "Windows screen scale is Detected as 200%, Applying Mouse Fix for it..."
	$YourInputX = "00,00,00,00,00,00,00,00,90,99,19,00,00,00,00,00,20,33,33,00,00,00,00,00,B0,CC,4C,00,00,00,00,00,40,66,66,00,00,00,00,00"
	$YourInputY = "00,00,00,00,00,00,00,00,00,00,38,00,00,00,00,00,00,00,70,00,00,00,00,00,00,00,A8,00,00,00,00,00,00,00,E0,00,00,00,00,00"
	$RegPath = 'HKCU:\Control Panel\Mouse'
	$hexifiedX = $YourInputX.Split(',') | % { "0x$_" }
	$hexifiedY = $YourInputY.Split(',') | % { "0x$_" }
	Set-ItemProperty -Path "$RegPath" -Name "SmoothMouseXCurve" -Type Binary -Value (([byte[]]$hexifiedX))
	Set-ItemProperty -Path "$RegPath" -Name "SmoothMouseYCurve" -Type Binary -Value (([byte[]]$hexifiedY))
} 
elseif ($checkscreenscale -eq "225") {
	Write-Output "Windows screen scale is Detected as 225%, Applying Mouse Fix for it..."
	$YourInputX = "00,00,00,00,00,00,00,00,C0,CC,1C,00,00,00,00,00,80,99,39,00,00,00,00,00,40,66,56,00,00,00,00,00,00,33,73,00,00,00,00,00"
	$YourInputY = "00,00,00,00,00,00,00,00,00,00,38,00,00,00,00,00,00,00,70,00,00,00,00,00,00,00,A8,00,00,00,00,00,00,00,E0,00,00,00,00,00"
	$RegPath = 'HKCU:\Control Panel\Mouse'
	$hexifiedX = $YourInputX.Split(',') | % { "0x$_" }
	$hexifiedY = $YourInputY.Split(',') | % { "0x$_" }
	Set-ItemProperty -Path "$RegPath" -Name "SmoothMouseXCurve" -Type Binary -Value (([byte[]]$hexifiedX))
	Set-ItemProperty -Path "$RegPath" -Name "SmoothMouseYCurve" -Type Binary -Value (([byte[]]$hexifiedY))
} 
elseif ($checkscreenscale -eq "250") {
	Write-Output "Windows screen scale is Detected as 250%, Applying Mouse Fix for it..."
	$YourInputX = "00,00,00,00,00,00,00,00,00,00,20,00,00,00,00,00,00,00,40,00,00,00,00,00,00,00,60,00,00,00,00,00,00,00,80,00,00,00,00,00"
	$YourInputY = "00,00,00,00,00,00,00,00,00,00,38,00,00,00,00,00,00,00,70,00,00,00,00,00,00,00,A8,00,00,00,00,00,00,00,E0,00,00,00,00,00"
	$RegPath = 'HKCU:\Control Panel\Mouse'
	$hexifiedX = $YourInputX.Split(',') | % { "0x$_" }
	$hexifiedY = $YourInputY.Split(',') | % { "0x$_" }
	Set-ItemProperty -Path "$RegPath" -Name "SmoothMouseXCurve" -Type Binary -Value (([byte[]]$hexifiedX))
	Set-ItemProperty -Path "$RegPath" -Name "SmoothMouseYCurve" -Type Binary -Value (([byte[]]$hexifiedY))
} 
elseif ($checkscreenscale -eq "300") {
	Write-Output "Windows screen scale is Detected as 300%, Applying Mouse Fix for it..."
	$YourInputX = "00,00,00,00,00,00,00,00,60,66,26,00,00,00,00,00,C0,CC,4C,00,00,00,00,00,20,33,73,00,00,00,00,00,80,99,99,00,00,00,00,00"
	$YourInputY = "00,00,00,00,00,00,00,00,00,00,38,00,00,00,00,00,00,00,70,00,00,00,00,00,00,00,A8,00,00,00,00,00,00,00,E0,00,00,00,00,00"
	$RegPath = 'HKCU:\Control Panel\Mouse'
	$hexifiedX = $YourInputX.Split(',') | % { "0x$_" }
	$hexifiedY = $YourInputY.Split(',') | % { "0x$_" }
	Set-ItemProperty -Path "$RegPath" -Name "SmoothMouseXCurve" -Type Binary -Value (([byte[]]$hexifiedX))
	Set-ItemProperty -Path "$RegPath" -Name "SmoothMouseYCurve" -Type Binary -Value (([byte[]]$hexifiedY))
} 
elseif ($checkscreenscale -eq "350") {
	Write-Output "Windows screen scale is Detected as 350%, Applying Mouse Fix for it..."
	$YourInputX = "00,00,00,00,00,00,00,00,C0,CC,2C,00,00,00,00,00,80,99,59,00,00,00,00,00,40,66,86,00,00,00,00,00,00,33,B3,00,00,00,00,00"
	$YourInputY = "00,00,00,00,00,00,00,00,00,00,38,00,00,00,00,00,00,00,70,00,00,00,00,00,00,00,A8,00,00,00,00,00,00,00,E0,00,00,00,00,00"
	$RegPath = 'HKCU:\Control Panel\Mouse'
	$hexifiedX = $YourInputX.Split(',') | % { "0x$_" }
	$hexifiedY = $YourInputY.Split(',') | % { "0x$_" }
	Set-ItemProperty -Path "$RegPath" -Name "SmoothMouseXCurve" -Type Binary -Value (([byte[]]$hexifiedX))
	Set-ItemProperty -Path "$RegPath" -Name "SmoothMouseYCurve" -Type Binary -Value (([byte[]]$hexifiedY))
} 
else {
	Write-Output "WE HAVE A PROBLEM! Screen scale is not set to traditional value, nothing has been set!"
}