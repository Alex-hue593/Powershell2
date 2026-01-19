[int]$numero = Read-Host "escriba un numero"


do {
write-host "$numero" -NoNewline
Write-Host "," -NoNewline
$numero--
} until ($numero -eq 0)
write-host "$numero"