# Indices
Que son los Indices?
Un indice tiene el objetivo de mejorar el rendimiento de las consultas en una base de datos, se encarga 


Tenemos distintos tipos de indices;

Los indices unicos : Viene siendo el mismo primary key 

Forma de como se estructura un indide:
Indice Ordinario:
CREATE INDEX Nombre(nombre del indice) ON Employees (firstname,lastname) # De esta forma creamos un indide normal
# Si queremos que el indice tenga en ciertos campos registros que sean unicos, lo estructuraremos de la siguiente
# Manera:
CREATE UNIQUE INDEX Nombre(Nombre del indice) ON Employees (FirstName,LastName) ---Lo que va dentro de los parentesis son los campos que va a seleccionar el indice
# Con esa forma creamos un indice mucho mas eficiente y optimo, ahora LastName y FirtsName son campos unicos
# Es decir, no pueden tener datos iguales en ambos registros, en otras palabras, no puede haber dos empleados
# Con el mismo nombre y el mismo apellido


Diferencias entre los indices y los primary key:
Los primary key no pueden tener campos nulos, normalmente son auto incremetables, sirven para identificar una fila
son indices unicos

Despues tenemos otros indices, no unicos, que son los ordinarios que son:
CREATE INDEX Name ON Products (FirstName)

# Indices no unicos : 

Por otro lado tenemos en indice unico:
CREATE UNIQUE INDEX Name ON Products (FirtsName)

# Despues tenemos el compuesto que es el mismo, pero que incluye a mas de un campo