
# Search for Kerberos pre-authentication failures (Event ID 4771)

$Events = Get-WinEvent -FilterHashtable @{
    LogName = 'Security'
    Id      = 4771
} -MaxEvents 20 -ErrorAction SilentlyContinue

if ($Events) {
    $Events | Select-Object TimeCreated, Id, Message |
        Format-List
}
else {
    Write-Host "No Event ID 4771 events found." -ForegroundColor Yellow
}
