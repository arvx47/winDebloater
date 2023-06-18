File: README.TXT for Gaming Debloater Version 1.3 Beta from www.FreeTimeTech.com
►Based on Daddy Madu GitHub PowerShell Scripts (Dec 5, 2022): https://github.com/DaddyMadu/Windows10GamingFocus

►Link: https://freetimetech.com/gaming-debloater/
►YouTube: Similar to our GENERAL Debloater - https://www.youtube.com/watch?v=3KTRS1RpBmg
NEW video coming later!

Check our full GUI (C#+WPF) version called 'SophiApp' on GitHub:
►Link: https://github.com/Sophia-Community/SophiApp
This other version is made in collaboration with farag2 (Dmitry Nefedov) and Inestic (Dmitry Demin).

Check our other version of Windows 10/11 Debloater called 'Sophia Script for Windows' on BenchTweakGaming.com website: 
►Link: https://benchtweakgaming.com/2020/10/27/windows-10-debloat-tool/
This other version is made in collaboration with farag2 (Dmitry Nefedov) and Inestic (Dmitry Demin).

Check out our GENERAL 'Windows 10 Debloater' made by FreeTimeTech.com: 
►Link: https://freetimetech.com/windows-10-clean-up-debloat-tool-by-ftt/

Check out our GENERAL 'Windows 11 Debloater' made by FreeTimeTech.com: 
►Link: https://freetimetech.com/windows-11-debloater-tool-debloat-gui/


INTRODUCTION
------------
Please read this document to understand how to use this program.

This is a 'Gaming Debloater' with many gaming tweaks. There are 3 new tabs compared to the GENERAL
'Windows 10 Debloater' on our website. The new tabs are: Windows Tweaks, QOL and Gaming Tweaks.

There is a new front tab to the Gaming Debloater, ‘EZ Gaming Debloater’. By clicking ‘Load’ button 
it will select the ‘Preset’ in the ‘Options’ menu and load the script for you in the text box. 
Then you can ‘Run Script’.

The tabs allows you to create a PowerShell script file that you can run to finely tweak/'Debloat' 
Windows 10 for gaming.

The options are arranged in different tabs and there is one preset in the Options menu. You can 
choose a preset first and add your own choices. You can also create your own radiobutton presets 
and share. There is also a 'Opposite' menu choice to select the alternate radiobutton choices. 
This is good to revert the changes in a script to run. 
IMPORTANT: Not all radiobuttons have opposite changes to revert back.

Click the little square button beside each radiobutton. This launches a text window to read/edit 
the function. Please be careful about editing the function.

DIRECTLY RUNNING
----------------
You can directly run the PowerShell script from the program after creating your script.
Fill in the radiobutton choices and click the 'Output PowerShell' button and click the 'Run 
Powershell' button to run the script. The "Run PowerShell" button creates a PowerShell script called
'runpsscript.ps1' in the same directory and runs it.

MANUAL RUNNING
--------------
OR save the PowerShell script as whatever you wish in the same directory with the other files then 
run it using the following commands.

But first, launch PowerShell (Run as administrator) and navigate to where your script is.

1. Set-ExecutionPolicy Unrestricted 
2. ./YOUR_SCRIPT_NAME.ps1

YOUR_SCRIPT_NAME is the name of the PowerShell script you just saved.

TROUBLESHOOTING
---------------
If you think the script froze while running, wait for a sec or press SPACE bar on your keyboard. 
Do not press enter as it may be interpreted as a skip for the next function in script. If you 
encounter freezing that is PowerShell’s fault as a result of buffer overload sometimes.

FILES
-----
There needs to be 6 files for this program to run properly.

►GamingDebloater.exe: The GUI program.
►data.txt: 	contains the options(function names) to select from (usually only 2 
		options that something is Enable or Disable). Notice the sections 
		and how a comma and double quotes separate them. The last option in 
		each section does not have a comma. Add or substract from the set.
►functions.txt: contains the complete functions named from data.txt. These are the 
		commands that get run. Add or substract from the set.
►preset.txt:	contains gaming preset. Click this option from the menu in program.
►tooltip.txt:	contains ToolTips for each radiobutton option. In English.

►MyDefaultAppAssociations.xml:	Used for setting Default Apps association.

►README.txt:	This text file for information and link resources.