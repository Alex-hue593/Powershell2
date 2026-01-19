$numero = Get-Random -Minimum 1 -Maximum 100
Write-Host "$numero"

$prueba = 101

while ($prueba -ne $numero){
$prueba = Read-Host "adivine un número"

    if ($prueba -lt $numero){
    Write-Host "el número es mayor"
    }elseif ($prueba -gt $numero){
    Write-Host "El número es menor"
    }
}

Write-Host "felicidades, has ganado"