# Sub consultas
Que son las subconsultas?
Una subconsulta, basicamente es una consulta dentro de otra consulta-

# Orden Prioritario; 
1)Subconsulta
2)Consulta 

# Limitaciones de las subconsultas:
Las subconsultas no pueden modificar datos de la base de datos, solo pueden consultar datos, si que pueden estar dentro de una consulta que modifica datos
pero ellas no pueden hacerlo, como tal.

No podemos usar alias dentro de la subconsulta 

Si queremos que la subconsulta nos devuelva, dos datos, tendremos que hacer 2 subconsultas 

# Estructura de la subconsulta:

SELECT ProductID,Quantity,
(SELECT ProductName FROM Products WHERE orderdetails.ProductID = ProductID) as Nombre
FROM orderdetails # Comentarios de la consulta:
-- Se pone el "Orderdetails.ProductID" Para hacer referencia dentro de la subconsulta que estamos llamando a una columna/campo de otra tabla 
# ---- IMPORTANTE NO OLVIDAR PONER EL WHERE ----

# Hay distintos tipos   
