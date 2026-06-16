$list = Get-AzDisk
$listOfUnattachedDisks = $list | Where-Object { $_.ManagedBy -eq $null }
$listOfUnattachedDisks | ConvertTo-Json | Out-File -Path ./result.json