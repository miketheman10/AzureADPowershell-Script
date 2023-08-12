# Prompt for the new computer name
$newName = Read-Host "Enter the new computer name"

# Rename the computer
Rename-Computer -NewName $newName

# Confirm if the user wants to restart now
$confirmRestart = Read-Host "Do you want to restart now? (yes/no)"
if ($confirmRestart -eq "yes") {
    Restart-Computer
} else {
    Write-Output "Remember to restart the computer later for changes to take effect."
}
