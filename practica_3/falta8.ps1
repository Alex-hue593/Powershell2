$nombre = Read-Host "escriba su nombre"

if( $nombre[0] -contains "a" "b"){
    Write-Host "pertenece al equipo A"
}elseif ( $nombre[0] -contains "n-z"){
    Write-Host "pertenece al equipo B"
}