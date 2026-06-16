$list = Get-AzDisk
$listOfUnattachedDisks = $list | Where-Object {$_.ResourceGroupName -eq "mate-azure-task-5" -and $_.ManagedBy -eq $null}
$listOfUnattachedDisks | ConvertTo-Json | Out-File -Path ./result.json