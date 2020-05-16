# Removes All Apps That Are Pre Packaged With Windows 10 Pro (except MS Store)

Get-AppxPackage | where-object {$_.name –notlike "*windowsstore*"} | Remove-AppxPackage