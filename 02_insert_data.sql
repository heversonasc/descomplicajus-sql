USE DescomplicaJus; -- Garante que você está no banco de dados correto

INSERT INTO Usuario (nome, email, senha, tipo) VALUES
('Mariana Souza', 'mariana@example.com', '123456', 'cliente'),
('Carlos Lima', 'carlos@example.com', '123456', 'cliente'),
('Dr. João Ribeiro', 'joao.adv@example.com', '123456', 'advogado');

INSERT INTO Advogado (id_usuario, oab, especialidade) VALUES
(3, '12345-OAB', 'Direito Civil');

INSERT INTO Consulta (id_usuario, titulo, descricao) VALUES
(1, 'Problema com contrato', 'Preciso entender uma cláusula que não ficou clara'),
(2, 'Multa indevida', 'Recebi uma multa que não reconheço');

INSERT INTO Mensagem (id_consulta, emissor, conteudo) VALUES
(1, 'usuario', 'Olá, poderiam me ajudar a entender meu contrato?'),
(1, 'advogado', 'Claro, envie a cláusula para analisarmos.'),
(2, 'usuario', 'Recebi uma multa indevida e quero contestar.');