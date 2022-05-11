SELECT 
	m.nome_musica AS cancao, COUNT(m.id_musica) AS reproducoes  
FROM SpotifyClone.historico_reproducoes h
INNER JOIN SpotifyClone.musicas m ON h.id_musica=m.id_musica
GROUP BY m.id_musica
ORDER BY reproducoes DESC, cancao
LIMIT 2; 