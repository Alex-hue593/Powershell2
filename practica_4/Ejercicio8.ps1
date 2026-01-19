[int]$numero = Read-Host "escriba un numero"



for ($a = 1; $a -lt $numero + 2; $a++){
    $variable = ($a * 2) - 1
    write-host ""
    for ($b = 1; $b -lt $a; $b++){
        $variable = $variable - 2
        write-host "$variable" -NoNewline}
} 
