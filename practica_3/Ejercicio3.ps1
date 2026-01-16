[int]$numero1 = Read-Host "escriba el primero numero entero"
[int]$numero2 = Read-Host "escriba el segundo numero entero"

if ($numero1 -gt $numero2) {
Write-Host "$numero1 es mayor que $numero2"
}elseif ($numero1 -lt $numero2){
Write-Host "$numero1 es menor que $numero2"
}else{
Write-Host "ambos numeros son iguales"
}
