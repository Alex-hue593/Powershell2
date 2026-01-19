$nombre = Read-Host "escriba su nombre "
$numero = Read-Host "escriba un numero"

for ($a = 1; $a -le $numero; $a++){
write-host "$nombre"
}