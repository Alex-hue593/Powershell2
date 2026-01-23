function usuarios {
    param(
        $ruta  
    )

    $lista = Import-Csv -Path $ruta

    foreach ($usuario in $lista) {
        # Imprimimos los campos específicos
        Write-Host "Nombre: $($usuario.nombre), Apellidos: $($usuario.apellidos), Grupo: $($usuario.grupo)"
    }
}

usuarios -ruta "C:\Users\Administrador\Downloads\usuarios.csv"