-- 1. Listar todas as consultas com nome do usuário
SELECT c.id_consulta, c.titulo, u.nome
FROM Consulta c
JOIN Usuario u ON c.id_usuario = u.id_usuario;

-- 2. Selecionar mensagens de uma consulta específica
SELECT conteudo, emissor, enviada_em
FROM Mensagem
WHERE id_consulta = 1
ORDER BY enviada_em;

-- 3. Buscar advogados por especialidade
SELECT u.nome, a.especialidade
FROM Advogado a
JOIN Usuario u ON a.id_usuario = u.id_usuario
WHERE a.especialidade = 'Direito Civil';

-- 4. Limitar exibição de mensagens
SELECT * FROM Mensagem LIMIT 5;

-- 5. Consultas criadas recentemente
SELECT * FROM Consulta ORDER BY criada_em DESC;
