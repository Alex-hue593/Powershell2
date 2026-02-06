$rutaUsers = "C:\Empresa_users"
$shareName = "Empresa_users$"
New-Item -Path $rutaUsers -ItemType Directory -Force
New-SmbShare -Path $rutaUsers -Name $shareName -FullAccess "Usuarios del Dominio"

$rutaNetlogon = "C:\Windows\SYSVOL\sysvol\EMPRESA.LOCAL\scripts\carpetas.bat"
$contenidoBatch = "powershell -Command ""New-SmbMapping -LocalPath 'Y:' -RemotePath '\\Empresa-dc1\Empresa' -Persistent `$false"""
Set-Content -Path $rutaNetlogon -Value $contenidoBatch


$empleados = Import-Csv -Path "C:\Users\Administrador\Desktop\archivos\carpeta\empleados.csv" -Delimiter ";"

foreach ($u in $empleados) {
    $cuenta = "$($u.apellido).$($u.nombre)"
    $rutaPersonal = "$rutaUsers\$cuenta"
    
    #carpeta del usuario
    New-Item -Path $rutaPersonal -ItemType Directory -Force
    #permisos
    $acl = Get-Acl $rutaPersonal
    # Bloquear herencia
    $acl.SetAccessRuleProtection($true, $false)
    
    #reglq
    $identidad = "EMPRESA\$cuenta"
    $reglaUser = New-Object System.Security.AccessControl.FileSystemAccessRule($identidad, "FullControl", "ContainerInherit, ObjectInherit", "None", "Allow")
    $acl.AddAccessRule($reglaUser)
    
    # Aplicar la ACL
    Set-Acl -Path $rutaPersonal -AclObject $acl

    
   
    Set-ADUser -Identity $cuenta `
               -ScriptPath "carpetas.bat" `
               -HomeDrive "Z:" `
               -HomeDirectory "\\Empresa-dc1\Empresa_users$\$cuenta"
    
    Write-Host "Procesado: $cuenta" -ForegroundColor Cyan
}











