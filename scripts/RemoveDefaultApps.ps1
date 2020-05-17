# Removes All Apps That Are Pre Packaged With Windows 10 Pro (except MS Store)


get-appxpackage *OneDrive* | remove-appxpackage

Get-AppxPackage | where-object {$_.name –notlike "*windowsstore*"} | Remove-AppxPackage