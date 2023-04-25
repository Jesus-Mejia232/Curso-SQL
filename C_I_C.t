# LINK Conceptos e instrucciones de consultas:
Las consultas en sql nos permiten, obtener y modificar datos dentro de la base de datos 



#LINK - """ _________________Creando una consulta/query Con SELECT:__________________ """

# "SELECT" es la sentencia que nos permite seleccionar algo
# "Asterisco" es el SELECTor universal(En programación) que nos permite seleccionar todo
# "FROM" es para señalar la base de datos a la que haremos la consulta
# "Users" Damos el nombre de la tabla que queremos seleccionar, ya sea para editarla o para obtener datos solamente 
SELECT * FROM users #Leyendo la consulta "Estamos seleccionando, todo de la base de datos users

"""Para seleccionar unos campos en concreto lo hacemos de la siguiente manera"""
SELECT nombre,edad,apellido FROM users # De esta forma sql nos devolvera solamente los campos "nombre" "Apellido" y "Edad"


"""________________Como insertar datos_____________________"""
# Estructura de la consulta:
# "Insert": Insertamos los datos
# "Into": Forma parte de la estructura
# "Users": Nombre de la tabla
# "()": Dentro de los parentesis van los campos que vamos a llenar de la tabla
# "Value"(): Dentro de los parentesis, ponemos los datos en el orden que especificamos mediante parametros anteriormente

INSERT INTO users (nombre,apellido,edad)
VALUES ('Jesus','Mejia',16), # De esta forma ingresamos varios registros en una sola consulta 
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
DELETE FROM usuarios


# Consulta para mostrar dos tablas:
SELECT * FROM clientes,usuarios


# De esta forma cambiamos el nombre de forma "temporal" 
SELECT lastname as Apellido, firstname as Nombre FROM users

# Sumar todo el campo:
SELECT SUM(Nombredecampo) as sumatotal FROM products

# ORDER BY
# Si usamos esto con nombres, lo ordenará en orden alfabetico
ORDER BY price # Automaticamente se ordenará de forma asecendente
ORDER BY price ASC # Como buena practica hay que poner la clausula "ASC"
ORDER BY price DESC # Tambien se puede ordenar de forma descendente

# Gerarquías con el ORDER BY cuando se usa de forma ascendente:
1)Null
2)Numeros
3)Caracteres especiales
4)Letras

# Si necesitamos que los nulls aparezcan de ultimo, pero sin cambiar le orden de "ASC" se hace así:
SELECT * FROM products
ORDER BY ProductsName ASC Nulls last
ORDER BY ProductsName DESC Nulls first
# Si necesitamos ordernar los datos de forma aleatoria es:
SELECT * FROM products 
ORDER BY RAMDON() # Se ponen los parentesis porque es una funcion

# Como esconder los duplicados:
SELECT DISTINC ProductsName FROM Products 
ORDER BY ProductsName ASC 

# Clausula "WHERE":


# Como eliminar un dato usando la clausula WHERE: 
DELETE FROM clientes
WHERE turno = 2 # Como es un tipo de dato numerico, no es necesario poner las comillas 

# Actualizar un dato con WHERE:
update turnos_medicos SET horario = "10:30"
WHERE id_turno = 2; 

SELECT * FROM turnos


#LINK -  Operador "And" "Or" y "Not"
# Usaremos el WHERE con condiciones

# Usando "AND"
SELECT *  FROM Customers
WHERE CustomersID >= 40 AND CustomersID <= 50 
# Con esa consulta le estamos diciendo que, muestre los clientes con id mayor que 40, pero menor que 50

# Usando "OR"
SELECT * FROM Employees
WHERE nombre = "Nancy" OR nombre="Anne"

# Mezclando un "AND" y un "OR" en una misma consulta 
SELECT * FROM Employees
WHERE (Price = < 20 OR CategoryID = 6) AND SupplierID = 7 # Pongo entre parentesis las primeras dos condiciones para que
# Se cumplan primero.

#LINK - Haciendo que no me aparezcan determinados registros, con el operador "AND"
SELECT * FROM Country
WHERE NOT Country = "USA"
AND
NOT Country = "France"

