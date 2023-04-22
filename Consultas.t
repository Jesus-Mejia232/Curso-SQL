# Así se elimina un producto
delete from turnos_medicos:
where id_turno = 2

delete from turnos_medicos:
where id_turno = 3 
# Con el "where" es básicamente es decir de que forma buscar el dato, ya sea por id de turno, de usaurio, por nombre etc...

# Si queremos ver ciertos campos especificos, ponemos los nombres de estos, separados por comas

select producto,id_producto,precio from productos

# Para actualizar un datos, con where y update:
update turnos_medicos set motivo = "Dolor de cuerpo", horario = "10:20"
where id_turno = 2;

select * from turnos_medicos

# Para eliminar datos
delete from turnos_medicos
where id_turno = 3;

select * from turnos_medicos


# Operadores lógicos:
select * from clientes
where clientesID < 55 and clientesID >49

# Para hacer que NO me muestre determinados productos haremos el sigueinte comando
select * from Productos
where NOT Price < 20