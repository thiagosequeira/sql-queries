/*
Queries fundamentales SQL:
Lección 2. Joins.
*/

-- INNER JOOIN tablas playlist, track, album, artist y genre para saber todos los datos de cada canción que se encuentran en las distintas playlist disponibles

SELECT p.Name AS playlist, t.Name AS cancion, a.Title AS album, g.Name AS genero, a2.Name AS banda, t.Composer AS compositor, t.Milliseconds AS milisegundos
FROM Playlist p 
JOIN PlaylistTrack pt ON p.PlaylistId = pt.PlaylistId 
JOIN Track t ON pt.TrackId = t.TrackId 
JOIN Album a ON t.AlbumId = a.AlbumId 
JOIN Artist a2 ON a.ArtistId = a2.ArtistId 
JOIN Genre g ON t.GenreId = g.GenreId 

-- LEFT JOIN para obtener todos los datos de la tabla izquierda y los datos coincidentes de la tabla derecha

SELECT c.CustomerId, c.FirstName, c.LastName, i.InvoiceId, i.InvoiceDate, i.Total
FROM Customer c
LEFT JOIN Invoice i ON c.CustomerId = i.CustomerId

-- RIGHT JOIN para obtener todos los datos de la tabla derecha y los datos coincidentes de la tabla izquierda

SELECT i.InvoiceId, i.InvoiceDate, i.Total, c.CustomerId, c.FirstName, c.LastName
FROM Invoice i
RIGHT JOIN Customer c ON i.CustomerId = c.CustomerId

-- FULL OUTER JOIN para obtener todos los datos de ambas tablas

SELECT c.CustomerId, c.FirstName, c.LastName, i.InvoiceId, i.InvoiceDate, i.Total
FROM Customer c
FULL OUTER JOIN Invoice i ON c.CustomerId = i.CustomerId

-- INNER JOIN para obtener sólo los datos coincidentes de ambas tablas 

SELECT t.TrackId AS id_cancion, t.Name AS cancion, m.Name AS tipo_media, g.Name AS genero, il.UnitPrice AS precio
FROM Track t
INNER JOIN MediaType m ON t.MediaTypeId = m.MediaTypeId
INNER JOIN Genre g ON t.GenreId = g.GenreId
INNER JOIN InvoiceLine il ON t.TrackId = il.TrackId
WHERE g.Name = 'Rock'
