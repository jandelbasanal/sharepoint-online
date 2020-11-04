$adminsite="https://yoursite-admin.sharepoint.com/"
$SiteURL="https://yoursite.sharepoint.com/sites/test"
$Cred = Get-Credential
Connect-SPOService -Url $adminsite –Credential $Cred
$Site = Get-SPOSite $SiteURL
Write-Host "Storage Allocated:"$Site.StorageQuota
Write-Host "Storage Used:"$Site.StorageUsageCurrent
Write-Host "Storage Threshold:"$Site.StorageQuotaWarningLevel
