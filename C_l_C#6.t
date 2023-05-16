# Normalizacion de bases de datos
Que es la normalizacion de bases de datos?
Sirve para eliminar anomalias en la base de datos, hacer que la base de datos sea mas eficiente y poder 
hacer consultas mas efectivas 

Tenemos cinco niveles en la normalizacion de bases de datos, cada uno de esos niveles los llamamos:

1) (1nf) Primera forma normal: Consiste en garantizar que un atributo en una tabla contenga un valor unico 
atomico, lo que signifca que los valores de una columna no tienen que ser conjuntos, listas o cualquier tipo de 
estructura de datos compleja. También establece que no deberían haber valores repetidos en una fila para una 
clave primaria. Es decir, cada atributo debe tener un valor unico para cada registro 

2) (2nf) Segunda forma normal: Esta forma establece que cada atributo que no sea una clave, debe depender de toda la 
clave primaria, o sea, no puede depender un poquito de la clave primaria y un poco de otra cosa, no, tiene que depender 
completamente de la clave primaria, si un atributo llega a no ser dependiente al 100 de una clave primaria, tendria 
que dividirse, eso se tiene que dividir y armar una tabla secundaria 