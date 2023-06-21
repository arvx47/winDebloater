Write-Output "Removing Edit with Paint 3D from context menu..."
Remove-ItemProperty -Path "HKCR:\SystemFileAssociations\.3mf\Shell\" -Name "3D Edit" -ErrorAction SilentlyContinue
Remove-ItemProperty -Path "HKCR:\SystemFileAssociations\.bmp\Shell\" -Name "3D Edit" -ErrorAction SilentlyContinue
Remove-ItemProperty -Path "HKCR:\SystemFileAssociations\.fbx\Shell\" -Name "3D Edit" -ErrorAction SilentlyContinue
Remove-ItemProperty -Path "HKCR:\SystemFileAssociations\.gif\Shell\" -Name "3D Edit" -ErrorAction SilentlyContinue
Remove-ItemProperty -Path "HKCR:\SystemFileAssociations\.jfif\Shell\" -Name "3D Edit" -ErrorAction SilentlyContinue
Remove-ItemProperty -Path "HKCR:\SystemFileAssociations\.jpe\Shell\" -Name "3D Edit" -ErrorAction SilentlyContinue
Remove-ItemProperty -Path "HKCR:\SystemFileAssociations\.jpeg\Shell\" -Name "3D Edit" -ErrorAction SilentlyContinue
Remove-ItemProperty -Path "HKCR:\SystemFileAssociations\.jpg\Shell\" -Name "3D Edit" -ErrorAction SilentlyContinue
Remove-ItemProperty -Path "HKCR:\SystemFileAssociations\.png\Shell\" -Name "3D Edit" -ErrorAction SilentlyContinue
Remove-ItemProperty -Path "HKCR:\SystemFileAssociations\.tif\Shell\" -Name "3D Edit" -ErrorAction SilentlyContinue
Remove-ItemProperty -Path "HKCR:\SystemFileAssociations\.tiff\Shell\" -Name "3D Edit" -ErrorAction SilentlyContinue