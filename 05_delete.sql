USE DescomplicaJus;

DELETE FROM Mensagem WHERE id_mensagem = 3;

DELETE FROM Consulta
WHERE id_consulta NOT IN (SELECT DISTINCT id_consulta FROM Mensagem);

DELETE FROM Usuario WHERE email = 'emailduplicado@example.com';