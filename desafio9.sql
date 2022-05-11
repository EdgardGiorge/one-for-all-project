SELECT COUNT(m.id_usuario) AS quantidade_musicas_no_historico 
FROM SpotifyClone.historico_reproducoes m
INNER JOIN SpotifyClone.usuarios u ON u.id_usuario = m.id_usuario
WHERE nome_usuario = 'Bill';