$carpeta = Read-Host "escriba el nombre de la carpeta "

if (Test-Path $carpeta -PathType container ){
    Get-ChildItem -Path $carpeta -Recurse

}