# Procedimientos almacenados:
Es un conjunto de instrucciones y comandos que se guardan en la base de datos y que podemos ejecutar en 
cualquier momento

En resumen, es una serie de instrucciones que puede almacenarse en el servidor de la base de datos y que las podemos 
utilizar cuando querramos para ahorrar codigo y que sea todo mas eficiente 

SQLite no soporta procedmientos almacenados por que no los necesita, por su estructura 

# Funciones definidas por el ususario 
Es una funcion que puede ser utilizada por sqlite que esta creada para poder recibir esa informacion que puede 
ser ejecutada en una consulta. Es decir, yo hago una consulta y esa consulta me devuelve valores, la funcion lo que hace 
es tomar esos valores, procesarlos y devolvernos una salida, pero ademas tiene que cumplir un requisito, tiene que estar 
registrada en sqlite