
Import-Module ActiveDirectory

Write-Host "=== Domain Information ===" -ForegroundColor Cyan
Get-ADDomain | Select-Object DNSRoot, DomainMode

Write-Host "`n=== Organizational Units ===" -ForegroundColor Cyan
Get-ADOrganizationalUnit -Filter * |
    Select-Object Name, DistinguishedName

Write-Host "`n=== Domain Users ===" -ForegroundColor Cyan
Get-ADUser -Filter * |
    Select-Object Name, SamAccountName, Enabled

Write-Host "`n=== Security Groups ===" -ForegroundColor Cyan
Get-ADGroup -Filter * |
    Select-Object Name, GroupScope, GroupCategory
    
