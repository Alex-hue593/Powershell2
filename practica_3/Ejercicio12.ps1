$tipoPizza = Read-Host "Escriba su tipo de pizza 'Vegetariana' o 'Normal' "

if ($tipoPizza -ieq "Vegetariana"){
$ingrediente =  Read-Host " Elija un ingrediente
Ingreientes:
               pimento
               tofu"
}elseif ($tipoPizza -ieq "Normal"){
$ingrediente =  Read-Host "Elija un ingrediente
Ingreientes:
               peperoni
               jamon
               salmon"
}

write-host "Su tipo de pizza es $tipoPizza con ingredientes: mozarella, tomate y $ingrediente"