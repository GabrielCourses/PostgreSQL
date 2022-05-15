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
VALUES(1, 'Cassandre', 'Caligaris', '1983-02-21', '32000.01', 'biologist'), 
(2, 'Gabriel', 'Rosas', '1982-02-28', '35000.02', 'actuary'),
(3, 'Leticia', 'Sanchez', '1982-02-27', '42000.05', 'engineer')

SELECT * FROM employees

-- Show the complete name and salary
SELECT nombre, lastname, salary FROM employees


