![](https://raw.githubusercontent.com/GabrielCourses/PostgreSQL/main/pgAdmin/image/pgAdmin.png)

# pgAdmin

Una vez que hemos instalado y configurado tanto PostgreSQL como pgAdmin vamos a comenzar con este tutorial. Para esto, estoy ocupando la aplicación de escritorio y me he conectado al servidor, localhost usando la contraseña que elegimos en la configuración. 

Para empezar creamos una nueva base de datos llamada **Course** y teniendo seleccionado este objeto en la parte izquierda de nuestro panel, desplegamos la herramienta Tools

![](https://raw.githubusercontent.com/GabrielCourses/PostgreSQL/main/pgAdmin/image/tools.png)

- Seleccionamos query tool, donde creamos una tabla empleados con el comando CREATE TABLE().
- Insertamos registros dentro de nuestra tabla con el comando INSERT INTO ().
- Consultamos la tabla con el total de campos o solo con algunos con el comando SELECT * FROM \<table\>

Ahora vamos a usar la tabla student_table.txt que se encuentra en la carpeta **data.** Copiamos y pegamos el código dentro de **query tools** y ejecutamos con F5.

![](https://raw.githubusercontent.com/GabrielCourses/PostgreSQL/main/pgAdmin/image/students.png)

### WHERE in ProgreSQL

El comando WHERE nos permite filtrar los datos, para mostrar como sucede esto vamos usar la misma tabla **students.**

Podemos concatenar los campos usando ||, en caso de concatenar el nombre podemos dejar espacios blancos con ' '. 

![](https://raw.githubusercontent.com/GabrielCourses/PostgreSQL/main/pgAdmin/image/concatenate.png)

Como se nota en la imagen anterior, la variable que acabamos de concatenar no tiene nombre, esto lo resolvemos declarando un alias.

```
-- Concatenate fields with ||
SELECT nombre||' '||apellidopaterno||' '||apellidomaterno, carrera, promedio FROM students
WHERE promedio < 90

-- Assign alias to the variable concatenate
SELECT nombre||' '||apellidopaterno||' '||apellidomaterno AS complete_name, carrera, promedio FROM students
WHERE promedio < 90
```

### Logical operators: AND, OR, NOT.

Hasta ahora hemos filtrado usando un solo criterio, si queremos agregar mas condiciones, podemos hacer uso de los operadores lógicos **AND, OR, NOT.**

## CREATE customers TABLE

Copiamos el código del fichero customers_table.txt para la creación de la siguiente tabla.

El CREATE y el INTO los encuentras en el fichero: customers_table.txt


## DELATE tables, columns, registers, values.

### DELATE REGISTERS OF A TABLE.