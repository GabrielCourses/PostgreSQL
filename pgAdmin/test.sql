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
SELECT * FROM customers

-- Show customers that debit >= 10000 and are from some state
SELECT * FROM customers
WHERE estado = 'Sinaloa'
AND totaldeuda >= 10000

-- Show customers that are some client type and debit >= 5000
SELECT * FROM customers
WHERE tipocliente = 'A'
AND totaldeuda >= 5000

-- Show customers that are some client type, debit >= 5000, state is some state
SELECT * FROM customers
WHERE tipocliente = 'A'
AND totaldeuda >= 5000
AND estado = 'Sinaloa'

-- Show customers that are client type = 'A' OR client type 'B'
SELECT * FROM customers
WHERE tipocliente = 'A'
OR tipocliente = 'B'

-- If two states have the same city, what should we do?
SELECT * FROM customers
WHERE ciudad = 'Mochis'
AND estado = 'Sinaloa'






