# Joins Cross 
Este es un ejemplo de un join corss:
SELECT * FROM Employees e, Orders o

Otra forma de hacerlo es asi:
SELECT * FROM Employees e,
CROSS JOIN Orders o 
# Sin el where es un "cross join" con el where es un "inner join(implicito)"

# De esta forma se estructura el  join:
SELECT * FROM [Employees] e, [Orders] o
WHERE e.EmployeesID = o.EmployeesID

# De esta forma se estructura un inner join:
SELECT * FROM Employees e
INNER JOIN Reward r ON e.EmployeesID = r.EmployeesID # En los inner join el "ON" es como el where en los otros tipos de consultas
# El inner join mezcla las coincidencias de ambas tablas, no muestra nulos

# El left join muestra todos los datos que se le piden de una tabla, y los rellena con parte de los datos de la otra 
# Tabla, si encuentra datos que no encajan con al tabla "A" en la tabla "B" , simplemente pone null en los campos vacíos 
# De la tabla "B"
# En otras palabras, tenemos tabla "A" y tabla "B" Muestra todos los datos de la tabla "A", y los datos de la tabla 
# "A" los rellenará con los datos de la tabla "B", Si la tabla "B" no tiene datos que puedan rellenar la tabla "A"
# Los pondrá esos registros en null

# Está tambiéne el rigth join, es el exacto opuesto del left join, muestra todos los datos e la tabla "B" Pero no muestra 
# Todos los datos de la tabla "A" lo mismo para rellenar registros, rellana los registros que se puedan. Con la tabla "A"
# Los registros de la tabla "B"

# Y al forma de escribirlos en una consulta es la siguiente:
SELECT firstname,Reward,month FROM Employees 

# También tenemos al full join: Este nos devuelve todos los datos, incluso si todos los registros de una fija son nulos
# En SQLite no se puede usar el full join, pero se puede simular con "UNION"

UNION Sirve para unir los datos de una consulta. Lo mejor de la clausula Union es, que si se repiten filas, union
las agrupa y hace que solo nos muestre una ejemp; Si hay 3 filas que dicen "Verde:Mediano" Agrupa esas 3 filas y solamente 
muestra una sola. Si queremos que las filas duplicadas se nos muestren en pantalla tendremos que usar el "UNION ALl"
Fijarse bien que la tablas que estemos uniendo tengan la misma cantidad de fias y el mismo tipo de datos, a modo que 
la union tenga un sentido 