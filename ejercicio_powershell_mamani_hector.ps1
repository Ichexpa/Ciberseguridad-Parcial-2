$procesos_sys = get-process

[int]$cantidad_limite = read-host "Ingrese un numero limite"

$cantidad_procesos = $procesos_sys.Count

if (($cantidad_procesos -gt $cantidad_limite) -and ($cantidad_procesos -lt 500)) {
    write-host "Los procesos en el sistema $cantidad_procesos son mayores a $cantidad_limite y menores a 500"
}
else {
    write-host "La cantidad de procesos $cantidad_procesos no es mayor al limite ingresado $cantidad_limite o es igual o mayor a 500."
}

write-host "Version de PowerShell: $($psVersionTable.psVersion)"
