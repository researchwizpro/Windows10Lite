# Description: Boxstarter Script
# Author: WillTee
# Lightweight Windows 10 Pro Setup Script

Disable-UAC
#ensure installing powershell modules don't prompt on needed dependencies
$ConfirmPreference = "None"

###
# New-ItemProperty -Path HKLM:Software\Microsoft\Windows\CurrentVersion\policies\system -Name EnableLUA -PropertyType DWord -Value 0 -Force
###

# Close Edge Browswer
Stop-Process -Name "Microsoftedge"

# Get the base URI path from the ScriptToCall value
$bstrappackage = "-bootstrapPackage"
$helperUri = $Boxstarter['ScriptToCall']
$strpos = $helperUri.IndexOf($bstrappackage)
$helperUri = $helperUri.Substring($strpos + $bstrappackage.Length)
$helperUri = $helperUri.TrimStart("'", " ")
$helperUri = $helperUri.TrimEnd("'", " ")
$helperUri = $helperUri.Substring(0, $helperUri.LastIndexOf("/"))
$helperUri += "/scripts"
write-host "helper script base URI is $helperUri"

function executeScript {
    Param ([string]$script)
    write-host "executing $helperUri/$script ..."
	iex ((new-object net.webclient).DownloadString("$helperUri/$script"))
}

#--- Setting up Windows ---#
executeScript "TurnOffWindowsHello.ps1"
executeScript "RemoveDefaultApps.ps1";
executeScript "InstallChocolatey.ps1";
executeScript "InstallApps.ps1";
executeScript "Set-AutoLogon.ps1";
#executeScript "RemovePinnedStartMenu.ps1";
#executeScript "RemovePinnedTaskbar.ps1";
#executeScript "SystemConfiguration.ps1";
#executeScript "FileExplorerSettings.ps1";
#executeScript "CommonDevTools.ps1";

#--- reenabling critial items ---


### END ###