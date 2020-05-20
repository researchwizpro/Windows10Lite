#  Access raw enrty script file from Github / build tmp.nuspec package
Boxstarter: Installing package https://raw.githubusercontent.com/researchwizpro/Windows10Lite/master/RunSetup.ps1

#  Boxstarter Version 2.12.0
#  (c) 2018 Chocolatey Software, Inc, 2012 - 2018 Matt Wrock. https://boxstarter.org

#  Please type CTRL+C or close this window to exit Boxstarter if you do not want to risk a reboot during this Boxstarter install.

#  Boxstarter may need to reboot your system.

#  Stores and encrypts password to bypass the login screen on reboot
Please provide your password so that Boxstarter may automatically log you on.
Your password will be securely stored and encrypted.
Autologon Password: *********

#  Authenticates password
Boxstarter: Successfully authenticated password.

#  Diables automatic updates to prevent conflicts during installation
Boxstarter: Disabling Automatic Updates from Windows Update

#  Build .nupkg package from tmp.nuspec package
Attempting to build package from 'tmp10FA.tmp.nuspec'.
Successfully created package 'C:\Users\WillTerfansky\AppData\Local\Apps\2.0\CR2NJ4A0.RVQ\T525ME74.CAL\boxs..tion_c786fcdd1652c60a_0002.000c_efda7cf3ed105942\BuildPackages\tmp10FA.tmp.1.0.0.nupkg'

#  Create and Install Boxstarter Shell
Boxstarter: Created a temporary package tmp10FA.tmp from https://raw.githubusercontent.com/researchwizpro/Windows10Lite/master/RunSetup.ps1 in C:\Users\WillTerfansky\AppData\Local\Apps\2.0\CR2NJ4A0.RVQ\T525ME74.CAL\boxs..tion_c786fcdd1652c60a_0002.000c_efda7cf3ed105942\BuildPackages
++ Boxstarter starting Calling Chocolatey to install tmp10FA.tmp. This may take several minutes to complete...
Installing the following packages:
tmp10FA.tmp
By installing you accept licenses for the packages.
[NuGet] Installing 'tmp10FA.tmp 1.0.0'.
[NuGet] Successfully installed 'tmp10FA.tmp 1.0.0'.

### ????????????????????????????????????
#  Not sure why this line got printed
tmp10FA.tmp v1.0.0 (forced)
#  Not sure why this package was created or where the files are stored.  Hidden backup?
tmp10fa.tmp package files install completed. Performing other installation steps.

#  Access raw helper script files from GitHub / Execute script files
Helper Script Base URI: https://raw.githubusercontent.com/researchwizpro/Windows10Lite/master/scripts
Helper Script Base URI: https://raw.githubusercontent.com/researchwizpro/Windows10Lite/master/scripts
Executing https://raw.githubusercontent.com/researchwizpro/Windows10Lite/master/scripts/TurnOffWindowsHello.ps1 ...
Executing https://raw.githubusercontent.com/researchwizpro/Windows10Lite/master/scripts/TurnOffWindowsHello.ps1 ...
The operation completed successfully.

Executing https://raw.githubusercontent.com/researchwizpro/Windows10Lite/master/scripts/InstallApps.ps1 ...
Executing https://raw.githubusercontent.com/researchwizpro/Windows10Lite/master/scripts/InstallApps.ps1 ...
+ Boxstarter starting Calling Chocolatey to install . This may take several minutes to complete...
+ Boxstarter starting Calling Chocolatey to install . This may take several minutes to complete...

#  Holding off on installing Chrome package until Chocolatey is installed
Installing the following packages:
;googlechrome
By installing you accept licenses for the packages.

#  Downloading Chocolately framework / Chrome
[NuGet] Attempting to resolve dependency 'chocolatey-core.extension (≥ 1.3.3)'.
Progress: Downloading chocolatey-core.extension 1.3.5.1... 100%
Progress: Downloading chocolatey-core.extension 1.3.5.1... 100%
Progress: Downloading GoogleChrome 81.0.4044.138... 100%
Progress: Downloading GoogleChrome 81.0.4044.138... 100%

#  Installing Chocolately framework
[NuGet] Installing 'chocolatey-core.extension 1.3.5.1'.
[NuGet] Successfully installed 'chocolatey-core.extension 1.3.5.1'.

chocolatey-core.extension v1.3.5.1 [Approved]
chocolatey-core.extension package files install completed. Performing other installation steps...

 Installed/updated chocolatey-core extensions.
 The install of chocolatey-core.extension was successful.
  Software installed to 'C:\ProgramData\chocolatey\extensions\chocolatey-core'

#  Installing Chrome
[NuGet] Installing 'GoogleChrome 81.0.4044.138'.
[NuGet] Successfully installed 'GoogleChrome 81.0.4044.138'.

GoogleChrome v81.0.4044.138 [Approved]
googlechrome package files install completed. Performing other installation steps...

Downloading googlechrome 64 bit
  from 'https://dl.google.com/tag/s/dl/chrome/install/googlechromestandaloneenterprise64.msi'
Downloading googlechrome 64 bit
  from 'https://dl.google.com/tag/s/dl/chrome/install/googlechromestandaloneenterprise64.msi'
Progress: 100% - Completed download of C:\Users\WillTerfansky\AppData\Local\Temp\chocolatey\chocolatey\GoogleChrome\81.0.4044.138\googlechromestandaloneenterprise64.msi (59.37 MB).

Download of googlechromestandaloneenterprise64.msi (59.37 MB) completed.
Download of googlechromestandaloneenterprise64.msi (59.37 MB) completed.
Hashes match.

Installing googlechrome...
Installing googlechrome...
googlechrome has been installed.
googlechrome has been installed.
 The install of googlechrome was successful.
  *Software installed as 'MSI', install location is likely default.

#  Log
Chocolatey installed 2/2 packages. 0 packages failed.
 See the log for details (C:\ProgramData\chocolatey\logs\chocolatey.log).
+ Boxstarter finished Calling Chocolatey to install . This may take several minutes to complete... 00:00:56.8976381
+ Boxstarter finished Calling Chocolatey to install . This may take several minutes to complete... 00:00:56.8976381
 The install of tmp10fa.tmp was successful.
  *Software installed as 'MSI', install location is likely default.

Chocolatey installed 1/1 packages. 0 packages failed.
 See the log for details (C:\ProgramData\chocolatey\logs\chocolatey.log).
++ Boxstarter finished Calling Chocolatey to install tmp10FA.tmp. This may take several minutes to complete... 00:01:02.2829021

### ???
True

#  Restores Automatic Updates
Boxstarter: Restore Automatic Updates from Windows Update

Type ENTER to exit: