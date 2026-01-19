


Function sumar {
    param(
        [int]$x,
        [int]$y
    )
    $resultado = $x + $y 
    write-host "la respuesta es $resultado"
}

Function restar {
    param(
        [int]$x,
        [int]$y
    )
    $resultado = $x - $y 
    write-host "la respuesta es $resultado"
}

Function multiplicar {
    param(
        [int]$x,
        [int]$y
    )
    $resultado = $x * $y 
    write-host "la respuesta es $resultado"
}


Function dividir {
    param(
        [int]$x,
        [int]$y
    )
    $resultado = $x / $y 
    write-host "la respuesta es $resultado"
}


write-host "****** CALCULADORA ********

    1. Sumar
    2. Restar
    3. Multiplicar
    4. Dividir
"

[int]$opcion = Read-Host "escriba la opción "

switch($opcion){
            1 {sumar(Read-Host "numero1")( Read-Host "numero2 ")}

            2 {restar(Read-Host "numero1")( Read-Host "numero2 ")}

            3 {multiplicar(Read-Host "numero1")( Read-Host "numero2 ")}

            4 {dividir(Read-Host "numero1")( Read-Host "numero2 ")}

}

