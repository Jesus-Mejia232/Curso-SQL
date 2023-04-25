# Conceptos e instrucciones de consultas:
Las consultas en sql nos permiten, obtener y modificar datos dentro de la base de datos 



""" _________________Creando una consulta/query Con select:__________________ """

# "Select" es la sentencia que nos permite seleccionar algo
# "Asterisco" es el selector universal(En programación) que nos permite seleccionar todo
# "From" es para señalar la base de datos a la que haremos la consulta
# "Users" Damos el nombre de la tabla que queremos seleccionar, ya sea para editarla o para obtener datos solamente 
select * from users #Leyendo la consulta "Estamos seleccionando, todo de la base de datos users

"""Para seleccionar unos campos en concreto lo hacemos de la siguiente manera"""
select nombre,edad,apellido from users # De esta forma sql nos devolvera solamente los campos "nombre" "Apellido" y "Edad"


"""________________Como insertar datos_____________________"""
# Estructura de la consulta:
# "Insert": Insertamos los datos
# "Into": Forma parte de la estructura
# "Users": Nombre de la tabla
# "()": Dentro de los parentesis van los campos que vamos a llenar de la tabla
# "Value"(): Dentro de los parentesis, ponemos los datos en el orden que especificamos mediante parametros anteriormente

insert into users (nombre,apellido,edad)
values ('Jesus','Mejia',16), # De esta forma ingresamos varios registros en una sola consulta 
       ('Jesus','Mejia',16)


"""__________Identificadores__________"""

Es un campo que sirve para identificar un registro entero

Tenemos dos tipos de identificadores, los primarios y los foraneos, dichos comunmente como Primary key o foreign k
Estos segundos son los que hacen referencia a una primary key de una tabla 

Para hacer cada registro unico con primary key, es necesario borrar todos los datos de la tabla,
Vamos a la parte de modificar tabla y habilitamos los botones de  "Autoincremental" y "PK(Primary key)"

# PK Primary Key: Campo que sirve para identificar registros 

# FK Foreign Key: Campo que hace referencia a una PK de otra tabla, no es una FK si no hace referencia a una PK, para 
# Usarla correctamente, como buena practica toca ponerle el mismo nombre que tiene en el campo de la tabla de la PK


"""_______Como eliminar datos________"""
delete from usuarios


# Consulta para mostrar dos tablas:
select * from clientes,usuarios


# Cambiar nombre de la columna, pero solamente en la tabla que me arroja luego de la consulta 
select lastname as Apellido, firstname as Nombre from users
# Order by
