SELECT
nome_artista AS artista, nome_album AS album
FROM SpotifyClone.albuns d
INNER JOIN SpotifyClone.artistas a ON a.id_artista = d.id_artista
WHERE nome_artista = 'Walter Phoenix'; 