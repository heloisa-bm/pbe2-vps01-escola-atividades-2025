use PBE - Aula 06;

insert into Aluno (ra, nome, email, telefone, atividades) values
('0147', 'Ana Maria', 'ana.maria@example.com', '65432178999', 'Descrição da Atividade 4'),
('1234', 'Pietro Almeida', 'pietro.almeida@example.com', '87960543215', 'Descrição da Atividade 8'),
('2468', 'Pedro Almeida', 'pedro.almeida@example.com', '65432178905', 'Descrição da Atividade 1'),
('3456', 'Maria Silva', 'maria.silva@example.com', '58595932012', 'Descrição da Atividade 5, Descrição da Atividade 6'),
('6789', 'Ana Mosconi', 'ana.mosconi@example.com', '76859403214', 'Descrição da Atividade 7');

insert into Telefone (id, numero, tipo, aluniId, aluno) values
(2, '65432178999', 'celular', '0147', 'Ana Maria'),
(5, '87960543215', 'fixo', '1234', 'Pietro Almeida'),
(6, '40171717890', 'fixo', '1234', 'Pietro Almeida'),
(1, '65432178905', 'celular', '2468', 'Pedro Almeida'),
(3, '58595932012', 'celular', '3456', 'Maria Silva'),
(7, '99944466678', 'celular', '3456', 'Maria Silva'),
(4, '76859403214', 'fixo', '6789', 'Ana Mosconi');

insert into Atividade (id, descricao, peso, dataInicio, dataEntrega, nota, parcial, alunoId, aluno) values
(5, 'Descrição da Atividade 4', 4.3, '2025-03-28T17:28:55.480Z', null, null, null, '0147', 'Ana Maria'),
(9, 'Descrição da Atividade 8', 2.25, '2025-03-28T17:33:22.778Z', null, 5, 1.125, '1234', 'Pietro Almeida'),
(2, 'Descrição da Atividade 1', 2, '2025-03-28T17:22:37.056Z', '2025-03-31T17:22:37.056Z', 8, 1.6, '2468', 'Pedro Almeida'),
(6, 'Descrição da Atividade 5', 4.9, '2025-03-28T17:30:11.168Z', null, null, null, '3456', 'Maria Silva'),
(7, 'Descrição da Atividade 6', 5.1, '2025-03-28T17:30:44.229Z', null, null, null, '3456', 'Maria Silva'),
(8, 'Descrição da Atividade 7', 2.1, '2025-03-28T17:32:17.738Z', null, null, null, '6789', 'Ana Mosconi');

select * from Aluno;
select * from Telefone;
select * from Atividade;