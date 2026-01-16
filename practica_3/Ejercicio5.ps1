$camino = Read-Host "escriba el nombre del fichero o carpeta "

if (Test-Path $camino) {
    write-host "si existe"
} else{
    write-host "no existe"
}