$rentaAnual = Read-Host "escriba su renta "

if ($rentaAnual -lt 10000) {
 Write-Host "tipo impositivo 5%"
} elseif ($rentaAnual -ge 10000 -and $rentaAnual -lt 20000){
 Write-Host "tipo impositivo 15%"
} elseif ($rentaAnual -ge 20000 -and $rentaAnual-lt 35000){
 Write-Host "Tipo impositivo 20%"
} elseif ($rentaAnual -ge 35000 -and $rentaAnual-lt 60000){
 Write-Host "tipo impositivo 30%"
} elseif ($rentaAnual -ge 60000){
 Write-Host "Tipo impositivo 45%"
}