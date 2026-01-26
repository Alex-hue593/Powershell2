Set-ADOrganizationalUnit -Identity "OU=Empresa,DC=EMPRESA,DC=LOCAL" -ProtectedFromAccidentalDeletion $False
Remove-ADOrganizationalUnit -Identity  "OU=Empresa,DC=EMPRESA,DC=LOCAL" -Recursive -Confirm:$False
