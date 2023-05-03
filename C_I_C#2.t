#LINK - Distinto de vs NOT

A los operadores booleanos se les dice logicos y viceversa

# Diferencias entre el operador "Distinto de" y "NOT"

"Distinto de" Es un operador de comparación

Diferencias entre un "Op booleano" y un "Op de comparación":

Op booleano es un op lógico y viceversa


#LINK -  Operador between

Uno de los usos que le podemos dar a between es el de poner rangos, ejemp:
SELECT * FROM Products
WHERE Price BETWEEN 20 AND 40 # Aquí se le está diciendo que muestre los precios que están entre 20 y 40 

between incluye el valor de los limites
Otro dato es que el primer valor que se pone en los parametros tiene que ser menor al segundo valor
ejemp:
SELECT * FROM Employees WHERE EmployeesID BETWEEN 2 AND 3 # El primer valor ingresado tiene que ser el menor
No podemos buscar entre tipos de datos que no sean compatibles, un ejemplo, no podemos buscar entre una fecha y un nombre
porque no nos arrojara un resultado, o lo arrojará errado 


#LINK - Operador Like

SELECT * FROM Employees
WHERE LIKE "%J%" # Con los el porcentual antes, indicamos que pueden haber otros caracteres antes(Va a haber una 
# J al final, pero antes puede haber cualquier cosa), y con el porcentual 
# Después del dato, Estamos diciendo que pueden haber cosas después del dato a buscar 
# Si se pone un porcentaje a los dos lados, significa que la letra/as pueden encontrarse en cualquier parte del registro 

# Que empiece con algo: LIKE "J%"
# Que teminer con algo: LIKE "%J"
# Que contenga esa letra LINE "%J%"


# LINK - Otro comodin de LIKE "_" el guion bajo:
Se usa para indicar cuantos caracteres tiene la palabra que se está buscando, ejemp:
SELECT * FROM Employees 
WHERE LIKE LastName "_o__" # La cantidad de guines bajos dependerá de cuántos carácteres tenga la palabra

#LINK - IS NOT NULL
Con este operador de comparación podemos hacer que nos o no, los registros nulos 
# Con esta consulta nos devolverá todos los nulos del campo "Productname"
SELECT * FROM Products
WHERE ProductnameIS NULL
ORDER BY Productname ASC


#NOTE - Operador lógico "IN"
El IN viene a remplazar al or, ejemp:

SELECT * FROM Products
WHERE ProductID = 3
OR ProductID = 2
OR ProductID = 5

En lugar de poner eso, pondremos: 
SELECT * FROM Products
WHERE ProductID IN (3,2,5) # Si se pone el "NOT" antes del "IN" nos devolverá todos los registros que no tengan esos datos


#LINK - Funciones de agregación: --------------------------------

Count(firstname) # Suma la cantidad de nombres que hay 
Round(AVG(Price)) # (AVG)Me devuelve el promedio, (ROUND()) lo redondea. 
# Si, dentro de "ROUND()" Después del primer argumento Que le damos a redondear, ponemos una coma y le damos un número, será la cantidad 
# de decimales que queremos que tenga.
# Si, adicional a eso le ponemos que muestre el nombre del supplierID, mostrará el prime supplierID con ese digito 


SUM() Suma todos los registros del campo. Si mostramos el nombre  
MIN(Price)  Devuele el producto que menos valor tiene 
MAX(Price)  Devuele el producto que mas valor tiene 

Having El no se puede usar sin el group by, el having no trabaja con filas, solo con grupos 

Estructura de como iria una consulta con el group by, having y order by:
select * from Products
WHERE
group by
having 
order by
limit (cantidad limite)
# No podemos meter una funcion de agregacion dentro de otra, de la misma, tampoco podemos usar un alias para meter esa funcion dentro de 
# La otra funcion


# GROUP BY 
Sirve para agrupar por producto y suma la cantidad de lo que sea de ese producto 
De la siguiente forma podemos sacar un promedio:
SELECT ROUND(AVG(Price)) FROM Products # Con esta consulta nos arrojará el promedio de precios del campo "Price" el "ROUND()" Es para redondear

SELECT SupplierID,ROUND(AVG(Price)) as promedio FROM Products
GROUP BY SupplierID 
ORDER BY promedio ASC # Con esta consulta le estamos diciendo a SQL que nos muestre le promeido de precios que maneja cada proveedor, y que lo 
# Ordene de manera ascendente (Con el argumento "ASC"). Si se llega a seleccionar el campo "Nombre" pondrá el primer registro con ese ID
# Para trabajar con condiciones en una funcion de agregación, se usa el "Having"
No podemos usar el valor de una funcion de agregacion con otra funcion de agragcion 
WHERE: Filtra registros
HAVING: Filtra grupos(no podemos usar al having sin el group by)
La estructura de la consulta seria:
SELECT FROM
WHERE
GROUP BY
HAVING
ORDER BY
lIMIT