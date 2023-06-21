curl.exe -s "https://raw.githubusercontent.com/ChrisTitusTech/winutil/main/ooshutup10_winutil_settings.cfg" -o $ENV:temp\ooshutup10.cfg
curl.exe -s "https://dl5.oo-software.com/files/ooshutup10/OOSU10.exe" -o $ENV:temp\OOSU10.exe
Start-Process $ENV:temp\OOSU10.exe -ArgumentList "$ENV:temp\ooshutup10.cfg /quiet"
