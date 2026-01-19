$contraseña = Read-Host "guarde la contraseña"
$intento = ''

while ($contraseña -ne $intento){
$intento = Read-Host "escriba la contraseña"

}

Write-Host "La has escrito correctamente"