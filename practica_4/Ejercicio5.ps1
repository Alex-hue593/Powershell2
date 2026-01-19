[int]$numero = Read-Host "escriba un numero"

for ($a = 1; $a -le $numero; $a = $a + 1){
$resultado = $a * $numero
write-host "$a * $numero = $resultado"

}