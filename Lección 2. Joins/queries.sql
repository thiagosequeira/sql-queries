/*
Queries fundamentales SQL:
Lección 2. Joins.
*/

-- Join tablas playlist, track, album, artist y genre para saber todos los datos de cada canción que se encuentran en las distintas playlist disponibles

SELECT p.Name AS playlist, t.Name AS cancion, a.Title AS album, g.Name AS genero, a2.Name AS banda, t.Composer AS compositor, t.Milliseconds AS milisegundos
FROM Playlist p 
JOIN PlaylistTrack pt ON p.PlaylistId = pt.PlaylistId 
JOIN Track t ON pt.TrackId = t.TrackId 
JOIN Album a ON t.AlbumId = a.AlbumId 
JOIN Artist a2 ON a.ArtistId = a2.ArtistId 
JOIN Genre g ON t.GenreId = g.GenreId 
