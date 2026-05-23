USE clinica_db;

INSERT INTO paciente (nome, telefone) VALUES
('Ana Souza', '85999990001'),
('Bruno Lima', '85999990002'),
('Carla Mendes', '85999990003'),
('Diego Alves', '85999990004'),
('Elaine Costa', '85999990005');

INSERT INTO especialidade (nome) VALUES
('Clinico Geral'),
('Cardiologia'),
('Pediatria'),
('Dermatologia'),
('Ortopedia');

INSERT INTO medico (nome, crm, id_especialidade) VALUES
('Marcos Silva', 'CRM1001', 1),
('Patricia Rocha', 'CRM1002', 2),
('Juliana Nunes', 'CRM1003', 3),
('Roberto Sales', 'CRM1004', 4),
('Fernanda Paz', 'CRM1005', 5);

INSERT INTO consulta (data_consulta, status, id_paciente, id_medico) VALUES
('2026-05-10 08:00:00', 'Concluida', 1, 1),
('2026-05-10 09:30:00', 'Concluida', 2, 2),
('2026-05-11 10:15:00', 'Agendada', 3, 3),
('2026-05-11 14:00:00', 'Concluida', 4, 1),
('2026-05-12 15:20:00', 'Agendada', 5, 4);

INSERT INTO exame (nome, valor) VALUES
('Hemograma', 35.00),
('Raio-X', 120.00),
('Eletrocardiograma', 90.00),
('Ultrassom', 150.00),
('Glicemia', 25.00);

INSERT INTO consulta_exame (resultado, id_consulta, id_exame) VALUES
('Normal', 1, 1),
('Alterado', 2, 3),
('Em andamento', 3, 4),
('Normal', 4, 5),
('Solicitado', 5, 2);
