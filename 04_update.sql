-- 1. Atualizar email do usuário
UPDATE Usuario
SET email = 'mariana.souza@novoemail.com'
WHERE id_usuario = 1;

-- 2. Atualizar especialidade do advogado
UPDATE Advogado
SET especialidade = 'Direito Trabalhista'
WHERE id_advogado = 1;

-- 3. Atualizar título da consulta
UPDATE Consulta
SET titulo = 'Cláusula contratual duvidosa'
WHERE id_consulta = 1;
