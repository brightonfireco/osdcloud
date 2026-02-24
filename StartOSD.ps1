Write-Host -ForegroundColor Green "Starting OSDCloud"
Start-Sleep -Seconds 5

Write-Host "Setting Time"
iex( irm timesync.osdcloud.ch)

# Set the module repository
Set-PSRepository PSGallery -InstallationPolicy Trusted

#Make sure I have the latest OSD Content
Write-Host -ForegroundColor Green "Updating OSD PowerShell Module"
Install-Module OSD -Force

Write-Host  -ForegroundColor Green "Importing OSD PowerShell Module"
Import-Module OSD -Force

#Start OSDCloudScriptPad
Write-Host -ForegroundColor Green "Start Windows 11 Imaging"
Start-OSDPad -RepoOwner brightonfireco -RepoName osdcloud -repofolder Deploy -BrandingTitle 'Brighton Fire Rescue District' -Color Blue -Hide Script
