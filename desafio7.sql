SELECT 
	distinct nome_artista AS artista, nome_album AS album,
    count(id_usuario) AS seguidores
FROM SpotifyClone.seguindo_artistas s
INNER JOIN SpotifyClone.albuns a ON a.id_artista = s.id_artista
INNER JOIN SpotifyClone.artistas c ON c.id_artista = a.id_artista
GROUP BY album, artista
ORDER BY seguidores desc, artista, album; 