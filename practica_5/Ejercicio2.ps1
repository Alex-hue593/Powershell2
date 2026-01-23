$usuarios = Import-Csv C:\Users\Administrador\Desktop\archivos\usuarios.csv -Delimiter ","

foreach ($em in $usuarios){
    Write-Host "usuario: $($em.nombre) Apellido: $($em.apellidos) Grupo: $($em.grupo)"

}