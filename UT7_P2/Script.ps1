$departamentos = Import-Csv -Path C:\Users\Administrador\Desktop\Ejercicios\archivos\carpeta\departamentos.csv -Delimiter ";"

$ruta = "C:\Empresa"

New-Item -Path $ruta -ItemType Directory

$acl = Get-Acl -Path $ruta
#regla
$regla = @('Todos', 'Read', 'ContainerInherit, ObjectInherit', 'None', 'Allow')
$ace= New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $regla
$acl.SetAccessRule($ace)
$acl | Set-Acl -Path $ruta

foreach ($em in $departamentos){
    $rutaN = "$ruta\$($em.departamento)"
    New-Item -Path $rutaN -ItemType Directory

    #regla
    $acl = Get-Acl -Path $rutaN
    $regla2 = New-Object System.Security.AccessControl.FileSystemAccessRule("EMPRESA\$(.$em.departamentos)", "Modify", "Allow")
#    $ace= New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $regla2
    $acl.SetAccessRule($regla2)
    $acl | Set-Acl -Path $rutaN
}


#recurso compartido

New-SmbShare -Path C:\Empresa -Name Empresa



