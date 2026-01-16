[int]$edad = Read-Host "escriba su edad"

If($edad -lt 18) {
write-host "es menor de edad"
}
else {
Write-Host "mayor de edad"
}
