# Author: WillTee
# Lightweight Windows 10 Pro Setup Script

### MAIN SCRIPT FILE ###

### Starting with fresh image of Windows 10 Pro ###

# Disable-UAC
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

# Close Edge Browser
Stop-Process -Name "Microsoftedge"

# Grab Base Package Script From Github
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

# Execute Scripts from Windows10Lite/scripts

choco install -y hackfont-windows
choco install -y boxstarter.winconfig
choco install -y disablewintracking
choco install -y disabledefender-winconfig

# executeScript "DisableSystemFunctions.ps1";
# executeScript "RemoveApps.ps1";
# executeScript "InstallNewApps.ps1";
# executeScript "RemoveUtilities.ps1";
# executeScript "InstallNewUtilities.ps1";
# executeScript "InstallExtensions.ps1";
# executeScript "CustomizeStartMenu.ps1";
# executeScript "CustomizeTaskbar.ps1";
# executeScript "CustomizeFileExplorer.ps1";
# executeScript "CustomizeDesktop.ps1";
# executeScript "CustomizeSettings.ps1";
# executeScript "CustomizeChrome.ps1";
# executeScript "EnableSystemFunctions.ps1";


# Refresh Powershell and Registry Keys


# Start-Process disablewintracking.exe


refreshEnv

### END ###