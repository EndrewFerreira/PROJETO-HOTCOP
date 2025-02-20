-- Listar todos os funcionários e suas permissões
SELECT NOME_FUNCIONARIO, USUARIO_FUNCIONARIO, PERMISSAO 
FROM FUNCIONARIOS;
-- _______________________________________________________
-- Buscar clientes cadastrados por um funcionário específico
SELECT C.NOME_CLIENTE, C.CPF_CLIENTE, C.TELEFONE_CLIENTE, F.NOME_FUNCIONARIO 
FROM CLIENTES C
JOIN FUNCIONARIOS F ON C.ID_FUNCIONARIO = F.ID_FUNCIONARIO
WHERE F.NOME_FUNCIONARIO = 'STEVE ROGERS';
-- _______________________________________________________
-- Listar quartos disponíveis
SELECT ID_QUARTO, TIPO_QUARTO, VALOR_TIPO_QUARTO, ANDAR, NUMERO_QUARTO 
FROM QUARTOS 
WHERE STATUS_QUARTO = 'Vago';
-- _______________________________________________________
-- Mostrar todas as reservas ativas com detalhes do cliente
SELECT reservas.ID_RESERVA, clientes.NOME_CLIENTE, clientes.TELEFONE_CLIENTE, reservas.DATA_INICIAL, reservas.DATA_FINAL
FROM RESERVAS 
JOIN CLIENTES  ON reservas.ID_CLIENTE = clientes.ID_CLIENTE
WHERE reservas.STATUS_RESERVA = 'Efetuada';
-- _______________________________________________________
-- Verificar quais quartos estão reservados e por quem
SELECT Q.NUMERO_QUARTO, Q.TIPO_QUARTO, C.NOME_CLIENTE, R.DATA_INICIAL, R.DATA_FINAL 
FROM RESERVA_QUARTOS RQ
JOIN QUARTOS Q ON RQ.ID_QUARTO = Q.ID_QUARTO
JOIN RESERVAS R ON RQ.ID_RESERVA = R.ID_RESERVA
JOIN CLIENTES C ON R.ID_CLIENTE = C.ID_CLIENTE;
-- _______________________________________________________
-- Consultar pagamentos efetuados por cliente
SELECT C.NOME_CLIENTE, P.VALOR, P.TIPO_PAGAMENTO, P.STATUS_PAGAMENTO 
FROM PAGAMENTOS P
JOIN RESERVAS R ON P.ID_RESERVA = R.ID_RESERVA
JOIN CLIENTES C ON R.ID_CLIENTE = C.ID_CLIENTE
WHERE P.STATUS_PAGAMENTO = 'Efetuado';
-- _______________________________________________________
-- Total arrecadado com reservas confirmadas
SELECT SUM(VALOR) AS TOTAL_ARRECADADO 
FROM PAGAMENTOS 
WHERE STATUS_PAGAMENTO = 'Efetuado';
-- _______________________________________________________
-- Mostrar histórico de reservas de um cliente específico
SELECT C.NOME_CLIENTE, R.ID_RESERVA, R.DATA_INICIAL, R.DATA_FINAL, R.STATUS_RESERVA 
FROM RESERVAS R
JOIN CLIENTES C ON R.ID_CLIENTE = C.ID_CLIENTE
WHERE C.NOME_CLIENTE = 'MOHAMED SALAH';
-- _______________________________________________________
-- Listar funcionários que ainda não cadastraram clientes
SELECT F.NOME_FUNCIONARIO 
FROM FUNCIONARIOS F
LEFT JOIN CLIENTES C ON F.ID_FUNCIONARIO = C.ID_FUNCIONARIO
WHERE C.ID_CLIENTE IS NULL;
-- _______________________________________________________
-- Consultar reservas que foram canceladas
SELECT C.NOME_CLIENTE, R.DATA_INICIAL, R.DATA_FINAL 
FROM RESERVAS R
JOIN CLIENTES C ON R.ID_CLIENTE = C.ID_CLIENTE
WHERE R.STATUS_RESERVA = 'Cancelada';
