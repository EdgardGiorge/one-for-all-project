SELECT 
	nome_usuario AS usuario,
	IF (max((YEAR(data_reproducao))) < 2021, 'Usuário inativo', 'Usuário ativo') AS condicao_usuario
FROM SpotifyClone.historico_reproducoes h
INNER JOIN SpotifyClone.usuarios u ON u.id_usuario = h.id_usuario
GROUP BY usuario 
ORDER BY usuario 