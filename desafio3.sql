SELECT 
	u.nome_usuario AS usuario,
	COUNT(i.id_usuario) AS qtde_musicas_ouvidas,
    ROUND(SUM(duracao_segundos/60),2)AS total_minutos
FROM SpotifyClone.historico_reproducoes i
INNER JOIN SpotifyClone.usuarios u ON i.id_usuario=u.id_usuario
INNER JOIN SpotifyClone.musicas m ON m.id_musica=i.id_musica
GROUP BY i.id_usuario
ORDER BY usuario 