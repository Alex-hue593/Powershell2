$departamentos = Import-Csv -Path C:\Users\Administrador\Desktop\Ejercicios\archivos\carpeta\departamentos.csv -Delimiter ";"
#poner tu propia ruta
$empleados = Import-Csv -Path C:\Users\Administrador\Desktop\Ejercicios\archivos\carpeta\empleados.csv -Delimiter ";"

New-ADOrganizationalUnit -Name "Empresa" -Path "DC=EMPRESA,DC=LOCAL" -Description "Unidad Empresa"

foreach ($em in $departamentos){
    New-ADOrganizationalUnit -Name "$($em.departamento)" -Path "OU=Empresa,DC=EMPRESA,DC=LOCAL" -Description "$($em.descripcion)"
    New-ADGroup -Name "$($em.departamento)" -GroupCategory Security -GroupScope Global -Path "OU=$($em.departamento),OU=Empresa,DC=EMPRESA,DC=LOCAL"
}

foreach ($em2 in $empleados){
    New-ADUser -Name "$($em2.nombre) $($em2.apellido)" -Path "OU=$($em2.departamento),OU=Empresa,DC=EMPRESA,DC=LOCAL" -SamAccountName "$($em2.apellido).$($em2.nombre)" -UserPrincipalName "$($em2.nombre)@empresa.local" -AccountPassword (ConvertTo-SecureString "aso2025." -AsPlainText -Force) -GivenName "$($em2.nombre)" -Surname "$($em2.apelido)" -ChangePasswordAtLogon $true -Enabled $true
    Add-ADGroupMember -Identity "$($em2.departamento)" -Members  "$($em2.apellido).$($em2.nombre)"

}

