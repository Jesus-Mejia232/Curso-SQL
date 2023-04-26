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

