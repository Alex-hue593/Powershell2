[int]$numero = Read-Host "escriba un numero"

for ($a = 1; $a -lt $numero; $a++){
    write-host "*"
    for ($b = 1; $b -le $a; $b++){
        write-host "*" -NoNewline}
}
write-host "*" -NoNewline