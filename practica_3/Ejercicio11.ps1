[int]$edad = Read-Host "escriba su edad "

if ($edad -lt 4) {
 Write-Host "El precio de entrada es gratis"
} elseif ($edad -ge 4 -and $edad -le 18){
 Write-Host "El precio de entrada son 5€"
} elseif ($edad -gt 18){
 Write-Host "El precio de entrada son 10€"
} 