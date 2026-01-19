
do {
$opcion = Read-Host "Elija una opcion:
a) Crear una carpeta

b) Crear un fichero nuevo

c) Cambiar el nombre de un fichero o carpeta

d) Borrar un archivo o carpeta

e) Verificar si existe un fichero o carpeta

f) Mostrar el contenido de un directorio.

g) Mostar la fecha y hora actuales

x) Salir
"

switch ($opcion){
        a{
        $rutaCarpeta = read-Host "Escriba la ruta en la que querra la carpeta"
        New-Item $rutaCarpeta -ItemType directory
        }

        b{
        $rutaArchivo = read-Host "Escriba la ruta en la que querra el archivo"
        New-Item $rutaArchivo -ItemType file
        }

        c{
        $rutaArchivoOriginal = read-Host "Escriba la ruta del archivo original"
        $nuevoNombre = read-Host "Escriba el nuevo nombre del archivo"
        Rename-Item $rutaArchivoOriginal $nuevoNombre
        }

        d{
        $ruta = read-Host "escriba la ruta de lo que quieras borrar"
        Remove-Item $ruta
        }

        e{
        $ruta = read-Host "escriba la ruta de lo que quieras comprobar"
        Test-Path $ruta
        }

        f{
        $ruta = read-Host "escriba la ruta de la carpeta que quieras ver su contenido"
        Get-ChildItem -Path $ruta -Recurse
        }

        g{
        get-date
        }

}
}
until ($opcion -eq "x")