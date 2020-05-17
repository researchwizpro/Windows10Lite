# Description: Boxstarter Script
# Author: WillTee
# Lightweight Windows 10 Pro Setup Script

### MAIN SCRIPT FILE ###

### Starting with fresh image of Windows 10 Pro ###


# Disable-UAC
#   UiPath Robot

# Enable AutoLogon
#   UiPath Robot

# Open Microsoftedge
#   UiPath Robot

# Click in URL bar
#   UiPath Robot

# Paste URL
#   UiPath Robot

# Hit Enter key
#   UiPath Robot

# Click Open
#   UiPath Robot

# Click Run
#   UiPath Robot

#ensure installing powershell modules don't prompt on needed dependencies
$ConfirmPreference = "None"

# Close Edge Browswer
Stop-Process -Name "Microsoftedge"

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco install autologon

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
executeScript "InstallApps.ps1";
executeScript "RemovePinnedTaskbar.ps1";
#executeScript "RemovePinnedStartMenu.ps1";
#executeScript "SystemConfiguration.ps1";
#executeScript "FileExplorerSettings.ps1";
#executeScript "CommonDevTools.ps1";

#--- reenabling critial items ---

refreshEnv

Restart-Computer

exit

### END ###