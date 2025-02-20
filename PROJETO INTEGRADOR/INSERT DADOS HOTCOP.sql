INSERT INTO funcionarios
(NOME_FUNCIONARIO, USUARIO_FUNCIONARIO, SENHA_FUNCIONARIO, PERMISSAO, TELEFONE_FUNCIONARIO, ENDERECO_FUNCIONARIO)
VALUES
('STEVE ROGERS','STEVE.ROGERS' ,'CAPT2011@' , 'RECEPCIONISTA', '91998765432', 'Brooklyn, Nova York, EUA'),
('MICAEL ARGOLO','MICAEL.ARGOLO' ,'ARGO2001@' , 'ADMINISTRADOR', '21977771234', 'Hawkins, Indiana, EUA'),
('TONY STARK','TONY.STARK' ,'IRON2008@' , 'GERENTE', '31999995678', 'Malibu, Califórnia, EUA'),
('HERMIONE GRANGER','HERMINONE.GRANGER' ,'HARY2001@' , 'RECEPCIONISTA', '41922223456', 'Londres, Inglaterra'),
('SANDRO ACÁCIO','SANDRO.ACACIO' ,'SAND2025@' , 'ADMINISTRADOR', '91984027326', 'Tatooine, Galáxia distante');
-- ___________________________________________________________________________________________ 

INSERT INTO clientes 
(NOME_CLIENTE, CPF_CLIENTE, TELEFONE_CLIENTE, EMAIL_CLIENTE, ENDERECO_CLIENTE, ID_FUNCIONARIO)
VALUES 
('PABLO MARÇAL', '04485078200', '91980527053','pablomarcal@gmail.com' , 'RUA BOA VENTURA', 1),
('SAMARA LISBOA', '1234567899', '91945632157','libssamara@hotmail.com' , 'RUA GENTIL BITENCOURT', 1),
('IGOR JUNIOR', '78952178550', '91984578945','igorjr@outlook.com.br' , 'RUA SÃO PEDRO CORREA', 4),
('MESSIAS SALOMÃO', '45224088922', '91985223011','messias17@gmail.com.br' , 'RUA BENARDO FERREIRA', 4),
('MOHAMED SALAH', '14757288311', '91982326277','salah@yahoo.com.br' , 'RUA PRESIDENTE GOULART', 1);
 -- ___________________________________________________________________________________________ 
 
INSERT INTO quartos
(TIPO_QUARTO, VALOR_TIPO_QUARTO, STATUS_QUARTO, ANDAR, NUMERO_QUARTO)
VALUES
('Simples', 150.00, 'Reservado', 1, 1),
('Duplo', 250.00, 'Vago', 1, 2),
('Master', 700.00, 'Manutenção', 1, 3),
('Suíte', 400.00, 'Ocupado', 2, 4),
('Simples', 150.00, 'Reservado', 2, 5),
('Luxo', 1200.00, 'Vago', 2, 06);
-- ___________________________________________________________________________________________ 

INSERT INTO reservas
(ID_CLIENTE, DATA_INICIAL, DATA_FINAL, STATUS_RESERVA)
VALUES 
(1, '2025-01-21', '2025-01-31', 'Efetuada'),
(2, '2025-02-14', '2025-02-18', 'Efetuada'),
(5, '2025-02-10', '2025-02-18', 'Cancelada'),
(4, '2025-01-28', '2025-02-28', 'Efetuada');
-- ___________________________________________________________________________________________ 

INSERT INTO reserva_quartos
(ID_RESERVA, ID_QUARTO)
VALUES
(1, 6),
(2, 1),
(2, 5),
(3, 3),
(4, 4);
-- ___________________________________________________________________________________________ 

INSERT INTO pagamentos
(ID_RESERVA, VALOR, TIPO_PAGAMENTO, STATUS_PAGAMENTO)
VALUES
(1, 12000.00, 'Crédito 12x', 'Efetuado'),
(2, 1200.00, 'Crédito 7x', 'Efetuado'),
(3, 5600.00, 'Débito', 'Estornado'),
(1, 12800.00, 'Dinheiro', 'Efetuado');