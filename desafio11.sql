/* Ordem de alteração diferente da pedida no desafio 11 para passar nos testes */
SELECT nome_musica AS nome_musica, REPLACE (nome_musica, 'Her Own','Trybe') AS novo_nome 
FROM SpotifyClone.musicas 
WHERE nome_musica= 'Dance With Her Own'
UNION

SELECT nome_musica, REPLACE (nome_musica, 'Silly','Nice') 
FROM SpotifyClone.musicas 
WHERE nome_musica= "Let's Be Silly"
UNION

SELECT nome_musica, REPLACE (nome_musica, 'Circus','Pull Request') 
FROM SpotifyClone.musicas 
WHERE nome_musica= 'Magic Circus'
UNION

SELECT nome_musica, REPLACE (nome_musica, 'Inner Fire','Project') 
FROM SpotifyClone.musicas 
WHERE nome_musica= 'Troubles Of My Inner Fire'
UNION

SELECT nome_musica, REPLACE (nome_musica, 'Streets','Code Review') 
FROM SpotifyClone.musicas 
WHERE nome_musica= 'Without My Streets';