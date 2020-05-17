# Unpins Apps From Taskbar


function Pin-App { param(
[string]$appname,
[switch]$unpin
)
try{
if ($unpin.IsPresent){
((New-Object -Com Shell.Application).NameSpace('shell:::{4234d49b-0245-4df3-b780-3893943456e1}').Items() | ?{$_.Name -eq $appname}).Verbs() | ?{$_.Name.replace('&','') -match 'From "Taskbar" UnPin|Unpin from Taskbar'} | %{$_.DoIt()}
return "App '$appname' unpinned from Taskbar"
}else{
((New-Object -Com Shell.Application).NameSpace('shell:::{4234d49b-0245-4df3-b780-3893943456e1}').Items() | ?{$_.Name -eq $appname}).Verbs() | ?{$_.Name.replace('&','') -match 'To "Taskbar" Pin|Pin to Taskbar'} | %{$_.DoIt()}
return "App '$appname' pinned to Taskbar"
}
}catch{
Write-Error "Error Pinning/Unpinning App! (App-Name correct?)"
}
}

# Unpin
Pin-App "Microsoft Store" -unpin
Pin-App "Microsoft Edge" -unpin

### TESTING ###

# Pin
Pin-App "File Explorer" -pin
Pin-App "Settings" -pin

### TESTING ###