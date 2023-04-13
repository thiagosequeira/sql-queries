/*
Queries fundamentales SQL:
Lección 3. Subconsultas.
*/

-- Subconsulta para obtener los datos de una tabla que cumple una condición en otra

SELECT *
FROM Invoice
WHERE CustomerId IN (SELECT CustomerId FROM Customer WHERE Country = 'USA')

-- 

SELECT CustomerId, FirstName, LastName, 
	(SELECT COUNT(*) 
	FROM Invoice 
	WHERE Customer.CustomerId = Invoice.CustomerId
	) AS NumFacturas
FROM Customer

-- 

SELECT *
FROM (
	SELECT InvoiceDate, SUM(Total) AS TotalVentas
	FROM Invoice
	GROUP BY InvoiceDate
	) AS VentasPorFecha
WHERE TotalVentas > 20
