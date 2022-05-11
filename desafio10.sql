SELECT  
	m.nome_musica AS nome, COUNT(h.id_musica) AS reproducoes
FROM SpotifyClone.historico_reproducoes h
INNER JOIN SpotifyClone.musicas m ON m.id_musica = h.id_musica
INNER JOIN SpotifyClone.usuarios u ON u.id_usuario = h.id_usuario
INNER JOIN SpotifyClone.planos p ON p.id = u.id_plano
WHERE plano = 'gratuito' OR plano = 'pessoal'
GROUP BY m.nome_musica;