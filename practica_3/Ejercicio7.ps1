$variable = "contraseña"

$intento = Read-Host "escriba la contraseña "

if ($variable -eq $intento){
    Write-Host "la contraseña es correcta"
}else{
    Write-Host "La constraseña es incorrecta"
}