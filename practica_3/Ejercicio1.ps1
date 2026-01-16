[int]$numero = Read-Host "escriba un numero"

If($numero % 2 -eq 0) {
write-host "es par"
}
else {
Write-Host "es impar"
}