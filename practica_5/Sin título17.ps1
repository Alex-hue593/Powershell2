function usuarios {
    param(
        $ruta
    )
    foreach ($usuario in Import-Csv $ruta){
    Write-Host "$usuario"
    }

}

usuarios (C:\Users\Administrador\Downloads\usuarios.csv)