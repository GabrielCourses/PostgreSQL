/* ============================================ */
-- Create table employees
CREATE TABLE employees(
numemploye INTEGER,
nombre VARCHAR(45),
lastname VARCHAR(45),
datebirth DATE,
salary DECIMAL(7,2),
puesto VARCHAR(45)
);

SELECT * FROM employees

INSERT INTO employees(numemploye, nombre, lastname, datebirth, salary, puesto)
VALUES(1, 'Mónica', 'Caligaris', '1993-02-21', '32000.01', 'biologist'), 
(2, 'Ricardo', 'Olivares', '1992-02-28', '35000.02', 'actuary'),
(3, 'Veronica', 'Sanchez', '1992-02-27', '42000.05', 'engineer')

SELECT * FROM employees

-- Show the complete name and salary
SELECT nombre, lastname, salary FROM employees

/* =====================================================================
Create table students */
SELECT * FROM students

-- Filter table by students with mean >= 90
SELECT * FROM students
WHERE promedio >= 90

-- Show only name, carrer and mean variables with mean >= 90
SELECT nombre, apellidopaterno, apellidomaterno, carrera, promedio FROM students
WHERE promedio >= 90

-- Show only name, carrer and mean variables with mean < 90
SELECT nombre, apellidopaterno, apellidomaterno, carrera, promedio FROM students
WHERE promedio < 90

-- Concatenate fields with ||
SELECT nombre||' '||apellidopaterno||' '||apellidomaterno, carrera, promedio FROM students
WHERE promedio < 90

-- Assign alias to the variable concatenate
SELECT nombre||' '||apellidopaterno||' '||apellidomaterno AS complete_name, carrera, promedio FROM students
WHERE promedio < 90

-- Filter table by mean and carrer type.
SELECT * FROM students
WHERE promedio >= 90
AND carrera = 'Biologia'

SELECT * FROM students
WHERE promedio < 90
AND carrera = 'Ingenieria en Sistemas'

-- Filter carrer used OR
SELECT * FROM students
WHERE carrera = 'Contabilidad'
OR carrera = 'Ingenieria en Sistemas'

-- Filter carrer used NOT
SELECT * FROM students
WHERE NOT carrera = 'Ingenieria en Sistemas'

/* ===============================================================================
Create customers table from customers_table.txt */
SELECT * FROM customer

-- Show customers that debit >= 10000 and are from some state
SELECT * FROM customer
WHERE estado = 'Sinaloa'
AND totaldeuda >= 10000

-- Show customers that are some client type and debit >= 5000
SELECT * FROM customer
WHERE tipocliente = 'A'
AND totaldeuda >= 5000

-- Show customers that are some client type, debit >= 5000, state is some state
SELECT * FROM customer
WHERE tipocliente = 'A'
AND totaldeuda >= 5000
AND estado = 'Sinaloa'

-- Show customers that are client type = 'A' OR client type 'B'
SELECT * FROM customer
WHERE tipocliente = 'A'
OR tipocliente = 'B'

-- If two states have the same city, what should we do?
SELECT * FROM customer
WHERE ciudad = 'Mochis'
AND estado = 'Sinaloa'

-- WHERE NO ES la única manera de filtrar información

-- ===========================================================================
-- DELETE table, columns, row, values
-- Borrar registro
SELECT * FROM customer

-- Delete table
DELETE FROM cusomer

SELECT * FROM students

-- El registro 1000 y 1001 estan mal registrados, es decir, esta duplicado. Vamos a corregirlo.
DELETE FROM students
WHERE numcontrol = 1000

SELECT * FROM students

DELETE FROM students
WHERE numcontrol = 1000 

SELECT * FROM students

DELETE FROM students
WHERE nombre = 'Juan' 
AND apellidopaterno = 'Vazquez'
AND apellidomaterno = 'Perez'

SELECT * FROM students

--Borrar a los alumnos que su promedio final es menor a 90.
DELETE FROM students
WHERE promedio < 90

SELECT * FROM students

--Borrar a los alumnos que su promedio final es mayor igual a 90 y menor a 95.
DELETE FROM students
WHERE promedio >= 90 AND promedio < 95

--DELETE FROM students
--WHERE promedio >= 90 BETWEEN promedio < 95

SELECT * FROM students

--Borrar una tabla
DROP TABLE customer

--Modificar algun campo del registro
SELECT * FROM employees

UPDATE employees SET nombre='Paola'
WHERE numemploye=1

UPDATE employees SET numemploye=7
WHERE numemploye=1

--Editar dos campos de un registro
UPDATE employees SET salary=50000, puesto='Product Owner'
WHERE numemloye=3

--Ordenar una tabla respecto a algún campo
SELECT * FROM employees
ORDER BY numemploye

--Ordenar de manera descendiente
SELECT * FROM employees
ORDER BY numemploye DESC

/*Volvemos a cargar la tabla customer y la ordenamos descendentemente 
 por el campo totaldeuda*/
SELECT * FROM customer

SELECT * FROM customer
ORDER BY totaldeuda DESC

--Mostrar los diferentes montos de totaldeuda
SELECT DISTINCT totaldeuda FROM customer
ORDER BY totaldeuda DESC


