# Qué es una entidad?
En sql las entidades las podemos representar con tablas 

Una entidad puede ser "Persona" y alacenamos los datos de "Persona" en las bases de datos 

En una base de datos de una tienda en línea las entidades pueden ser:
1)Clientes 
2)Productos
3)Ordenes de compra
4)Proveedores

La nomenclatura que se usa para representar las entidades se llama "Notación de chen":

Las entidades las podemos representar con un rectangulo. Dentro de la Notación de chen
Cuando ponemos una palabra y la encerramos en un cuadrado, estamos diciendo que es una entidad

Qué es lo que una entidad hace que una entidad sea una entidad?
Sus atributos. Por ejemp, una casa no es una casa no es una casa si no tiene ambiente, ubicación
tamaño etc...

Tipos de atributos:

Atributos simples: Son atributos que solo tiene datos unicos, ejemp: el precio de una casa es de 12223
solamente 

Atributos Compuestos: Son los que se componen de otros atributos mas pequeños, como por ejemplo,
un "Ambiente" por que a su vez, este se compone de un tamaño, y tipo de ambiente.
# La forma de representar atributos compuestos es poniendo una pequeña línea debajo de ellos, así como 
# Especie de rama en un arbol genealogico 

Atributos multivalor: Son los que tiene mas de un valor, en el caso de una casa, una casa tiene distintos
ambientes, también las ventanas y también las puertas, porque hay mas de una de estas al rededor de  
la casa. Como representamos a los atributos multivalor, con un doble circulo a su alrededor.

Atributos Derivados: Son los que podriamos obtener con cualquier otra informacion, en el caso de la casa
son "Antiguedad" y "Ubicacion", la Antiguedad de la casa la podemos saber con la fecha de construccion
la ubicacion con la direccion. Los atributos derivados los identificamos con un borde punteado 

# Llaves o "Key" 

Las key son formas unicas de representar datos, ejemp: Las casa son iguales, pero son distintas
por el "id" de vivienda 

Otro ejemp: Tenemos la entidad "Personas" hay dos hermanos gemelos, son exactamente iguales, 
lo que los hace distintos es el doc de identidad. La forma de representarla en la notacion de chen 
es con un ovalo normal, pero con una pequeña linea horizontal bajo de ellas 