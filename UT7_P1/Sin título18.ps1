$departamentos = Import-Csv -Path "C:\Users\Administrador\Desktop\Ejercicios\archivos\carpeta\empleados.csv"
#poner tu propia ruta

New-ADOrganizationalUnit -Name "Empresa" -Path "DC=EMPRESA,DC=LOCAL" -Description "Unidad Empresa"

New-ADOrganizationalUnit -Name "Ventas" -Path "OU=Empresa,DC=EMPRESA,DC=LOCAL" -Description "departamento ventas"
New-ADOrganizationalUnit -Name "Produccion" -Path "OU=Empresa,DC=EMPRESA,DC=LOCAL" -Description "departamento prodccion"
New-ADOrganizationalUnit -Name "Personal" -Path "OU=Empresa,DC=EMPRESA,DC=LOCAL" -Description "departamento personal"
New-ADOrganizationalUnit -Name "Finanzas" -Path "OU=Empresa,DC=EMPRESA,DC=LOCAL" -Description "departamento finanzas"

New-ADGroup -Name "ventas" -GroupCategory Security -GroupScope Global -Path "OU=Ventas,OU=Empresa,DC=EMPRESA,DC=LOCAL"
New-ADGroup -Name "produccion" -GroupCategory Security -GroupScope Global -Path "OU=Produccion,OU=Empresa,DC=EMPRESA,DC=LOCAL"
New-ADGroup -Name "personal" -GroupCategory Security -GroupScope Global -Path "OU=Personal,OU=Empresa,DC=EMPRESA,DC=LOCAL"
New-ADGroup -Name "finanzas" -GroupCategory Security -GroupScope Global -Path "OU=Finanzas,OU=Empresa,DC=EMPRESA,DC=LOCAL"
