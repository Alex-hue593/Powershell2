[int]$numero1 = Read-Host "escriba el primero numero "
[int]$numero2 = Read-Host "escriba el segundo numero "

write-host "****** CALCULADORA ********

    1. Sumar
    2. Restar
    3. Multiplicar
    4. Dividir
"

[int]$opcion = Read-Host "escriba la opción "

switch($opcion){
            1 {$resultado = $numero1 + $numero2}

            2 {$resultado = $numero1 - $numero2}

            3 {$resultado = $numero1 * $numero2}

            4 {$resultado = $numero1 / $numero2}
}

Write-Host "el resultado es " $resultado