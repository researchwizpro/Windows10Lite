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

# ensure installing powershell modules don't prompt on needed dependencies
$ConfirmPreference = "None"


# *** NEED TO TEST IF NEEDED *** #
# Temporarily Bypass Execution Policy
Set-ExecutionPolicy Bypass -Scope Process -Force
# *** NEED TO TEST IF NEEDED *** #


# Close Edge Browswer
Stop-Process -Name "Microsoftedge"

# Get Base URI Path From ScriptToCall Value
$bstrappackage = "-bootstrapPackage"
$helperUri = $Boxstarter['ScriptToCall']
$strpos = $helperUri.IndexOf($bstrappackage)
$helperUri = $helperUri.Substring($strpos + $bstrappackage.Length)
$helperUri = $helperUri.TrimStart("'", " ")
$helperUri = $helperUri.TrimEnd("'", " ")
$helperUri = $helperUri.Substring(0, $helperUri.LastIndexOf("/"))
$helperUri += "/scripts"
write-host "Helper Script Base URI: $helperUri"

# ---------------------------------------------------------------------------

#--- Scripts ---#

# Script Excecution Function
function executeScript {
    Param ([string]$script)
    write-host "Executing $helperUri/$script ..."
	iex ((new-object net.webclient).DownloadString("$helperUri/$script"))
}

# Execute Scripts From Windows10Lite/scripts
executeScript "TurnOffWindowsHello.ps1"
executeScript "RemoveDefaultApps.ps1";
executeScript "InstallApps.ps1";
executeScript "RemovePinnedTaskbar.ps1";
#executeScript "RemovePinnedStartMenu.ps1";
#executeScript "SystemConfiguration.ps1";
#executeScript "FileExplorerSettings.ps1";
#executeScript "CommonDevTools.ps1";

### Reenabling Critical Items


# Refresh Powershell and Registry Keys
refreshEnv

### END ###