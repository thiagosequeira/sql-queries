/*
Queries fundamentales SQL:
• Lectura de datos de distintas tablas utilizando distintas condiciones.
*/

SELECT *
FROM Customer c 

SELECT FirstName, LastName, Company, Country, State
FROM Customer c 

SELECT DISTINCT Company
FROM Customer c 

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

SELECT *
FROM Customer c 
LIMIT 5
