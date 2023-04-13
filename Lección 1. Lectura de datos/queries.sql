/*
Queries fundamentales SQL:
Lección 1. Lectura de datos de distintas tablas utilizando distintas condiciones.
*/

SELECT *
FROM Customer c 

SELECT FirstName, LastName, Company, Country, State
FROM Customer c 

SELECT DISTINCT Company
FROM Customer c 

-- Utilización sentencia WHERE

SELECT DISTINCT Company
FROM Customer c 
WHERE Country = 'USA' OR 'Canada'

SELECT DISTINCT Company
FROM Customer c 
WHERE Country = 'USA' AND State = 'CA' OR 'NY'

SELECT DISTINCT Company
FROM Customer c 
WHERE NOT Country = 'USA'

SELECT DISTINCT Company, Country, State 
FROM Customer c 
WHERE Company IS NOT NULL

-- Seleccionar TOP 5 resultados

SELECT *
FROM Customer c 
LIMIT 5

-- Seleccionar columnas específicas de una tabla y renombrarlas

SELECT FirstName AS Nombre, LastName AS Apellido, Email AS CorreoElectronico
FROM Customer

-- Ordenar resultados en orden ascendente o descendente 

SELECT *
FROM Customer
ORDER BY LastName ASC

SELECT *
FROM Customer
ORDER BY FirstName DESC

-- Utilizar la función COUNT para contar el número de filas en una tabla

SELECT COUNT(*)
FROM Customer

SELECT COUNT(DISTINCT Country)
FROM Customer
