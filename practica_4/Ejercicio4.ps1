[int]$numero = Read-Host "escriba un numero"

for ($a = 1; $a -le $numero; $a = $a + 2){
write-host "$a"

}