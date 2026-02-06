$departamentos = Import-Csv -Path C:\Users\Administrador\Desktop\archivos\carpeta\departamentos.csv -Delimiter ";"


#RAIZ
$ruta = "C:\Empresa"
New-Item -Path $ruta -ItemType Directory -Force

$aclRaiz = Get-Acl -Path $ruta
$aclRaiz.SetAccessRuleProtection($true, $false)
$reglaRaiz = New-Object System.Security.AccessControl.FileSystemAccessRule("Usuarios del Dominio", "ReadAndExecute", "ContainerInherit, ObjectInherit", "None", "Allow")
$aclRaiz.SetAccessRule($reglaRaiz)

$arAdminRaiz = New-Object System.Security.AccessControl.FileSystemAccessRule("Administradores", "FullControl", "ContainerInherit, ObjectInherit", "None", "Allow")
$aclRaiz.AddAccessRule($arAdminRaiz)

$arUserRaiz = New-Object System.Security.AccessControl.FileSystemAccessRule("Usuarios del Dominio", "ReadAndExecute", "ContainerInherit, ObjectInherit", "None", "Allow")
$aclRaiz.AddAccessRule($arUserRaiz)

#Sobra
#$arAdminRaiz = New-Object System.Security.AccessControl.FileSystemAccessRule("Administradores", "FullControl", "ContainerInherit, ObjectInherit", "None", "Allow")
#$aclRaiz.AddAccessRule($arAdminRaiz)

Set-Acl -Path $ruta -aclObject $aclRaiz




foreach ($em in $departamentos){
    $nombreDept = $em.departamento
    $rutaN = "$ruta\$nombreDept"
    New-Item -Path $rutaN -ItemType Directory -Force

    #regla
    $aclDept = Get-Acl -Path $rutaN
    $aclDept.SetAccessRuleProtection($true, $false)

    $reglaDept = New-Object System.Security.AccessControl.FileSystemAccessRule("EMPRESA\$nombreDept", "Modify", "ContainerInherit, ObjectInherit", "None", "Allow")
#    $ace= New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $regla2
    $aclDept.AddAccessRule($reglaDept)
   

   #Administradores
   $reglaAdmin = New-Object System.Security.AccessControl.FileSystemAccessRule("Administradores", "FullControl", "ContainerInherit, ObjectInherit", "None", "Allow")
   $aclDept.AddAccessRule($reglaAdmin)

   Set-Acl -Path $rutaN -aclObject $aclDept
}


#recurso compartido

New-SmbShare -Path $ruta -Name "Empresa" -FullAccess "Usuarios del Dominio"



