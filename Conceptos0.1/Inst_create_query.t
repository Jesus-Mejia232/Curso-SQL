#Qué es una consulta?
R//: Es, básicamente hacerle una petición/busqueda a una base de datos 
Una consulta tambien es todo lo que se le ordena a la base de datos, ya sea ordenar, agregar o eliminar 
datos

Creando una consulta en SQL:

 Select * #El asterisco en SQL es caracter universal para hacer referencia a que queremos TODO


select * from users  #Cada que se hace un select, devuelve una tabla nueva 

#Ahora veremos como ingresar datos a la base de datos:
insert into "Nombre de la base de datos" (nombre,apellido,edad) #ponemos los campos que queremos llenar
#luego ponemos los datos de los respectivos campos, en el orden que los ingresamos en los parámetros
values("Jesus","Edgardo","17")


Llaves primarias(primary key): Identifiamos un registro entero 

Llaves foraneas(foreign key):Campo que hace referencia a otra primary key de otra tabla
Una buena practica al hacer referencia a una primary key de otra tabla, es usar el mismo nombre 
