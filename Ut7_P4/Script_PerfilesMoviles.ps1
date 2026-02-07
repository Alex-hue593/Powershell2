$usuariosPersonal = Get-ADGroupMember -Identity "Personal"

foreach ($u in $usuariosPersonal) {
    $username = $u.SamAccountName
    
    $profilePath = "\\Empresa-dc1\Empresa_users$\$username"
    Set-ADUser -Identity $username -ProfilePath $profilePath    
}