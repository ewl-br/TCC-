
CREATE DATABASE estudamais;
USE estudamais;


CREATE TABLE materias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    professor VARCHAR(100),
    descricao TEXT
);


CREATE TABLE horarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    materia_id INT,
    dia_semana ENUM('Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado', 'Domingo'),
    hora_inicio TIME,
    hora_fim TIME,
    FOREIGN KEY (materia_id) REFERENCES materias(id)
);


CREATE TABLE eventos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    descricao TEXT,
    data_evento DATE,
    hora_evento TIME,
    tipo ENUM('Prova', 'Trabalho', 'Apresentação', 'Outro')
);


CREATE TABLE sugestoes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100),
    mensagem TEXT,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE horarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    materia_id INT,
    dia_semana ENUM('Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado', 'Domingo'),
    hora_inicio TIME,
    hora_fim TIME,
    FOREIGN KEY (materia_id) REFERENCES materias(id)
);


INSERT INTO materias (nome, professor, descricao) VALUES
('Matemática', 'Prof. Ana Souza', 'Matemática básica e avançada'),
('História', 'Prof. Carlos Mendes', 'História do Brasil e mundial'),
('Biologia', 'Prof. Marina Silva', 'Estudo dos seres vivos'),
('Português', 'Prof. João Lima', 'Gramática, interpretação e produção textual'),
('Geografia', 'Prof. Sandra Costa', 'Geopolítica, mapas e relevo terrestre');


INSERT INTO horarios (materia_id, dia_semana, hora_inicio, hora_fim) VALUES
(1, 'Segunda', '08:00:00', '09:00:00'),
(2, 'Terça', '10:00:00', '11:00:00'),
(3, 'Quinta', '13:30:00', '15:00:00'),
(4, 'Sexta', '09:00:00', '10:30:00'),
(5, 'Quarta', '11:00:00', '12:00:00');



INSERT INTO eventos (titulo, descricao, data_evento, hora_evento, tipo) VALUES
('Prova de Matemática', 'Capítulos 1 ao 5', '2025-08-10', '09:00:00', 'Prova'),
('Entrega de trabalho de Biologia', 'Ecossistemas e cadeias alimentares', '2025-08-15', '23:59:00', 'Trabalho'),
('Apresentação de História', 'Segunda Guerra Mundial', '2025-08-18', '10:00:00', 'Apresentação'),
('Reunião com grupo de estudo', 'Planejar revisão para as provas finais', '2025-08-20', '16:00:00', 'Outro');

INSERT INTO sugestoes (titulo, mensagem) VALUES
('Estudo do dia: Matemática', 'Focar em resolver 10 exercícios de equações do 2º grau e revisar funções.'),
('Estudo do dia: História', 'Ler sobre a Revolução Francesa e montar um resumo com os principais eventos.'),
('Estudo do dia: Biologia', 'Revisar células eucariontes e procariontes. Assistir a um vídeo sobre mitocôndrias.'),
('Estudo do dia: Português', 'Treinar análise sintática com 5 frases e revisar regras de crase.'),
('Estudo do dia: Geografia', 'Estudar fusos horários e revisar mapas políticos da América do Sul.'),
('Estudo do dia: Redação', 'Fazer uma redação com tema: “Desafios da educação no Brasil” e pedir feedback.'),
('Estudo do dia: Revisão geral', 'Fazer um mapa mental conectando os temas mais importantes da semana.'),
('Estudo leve', 'Ler um capítulo de um livro paradidático e revisar anotações de aula.'); 

INSERT INTO horarios (materia_id, dia_semana, hora_inicio, hora_fim) VALUES
((SELECT id FROM materias WHERE nome = 'Matemática'), 'Segunda', '08:00:00', '09:00:00'),
((SELECT id FROM materias WHERE nome = 'História'), 'Segunda', '14:00:00', '15:00:00');

INSERT INTO horarios (materia_id, dia_semana, hora_inicio, hora_fim) VALUES
((SELECT id FROM materias WHERE nome = 'Biologia'), 'Terça', '09:00:00', '10:30:00'),
((SELECT id FROM materias WHERE nome = 'Português'), 'Terça', '16:00:00', '17:00:00');

INSERT INTO horarios (materia_id, dia_semana, hora_inicio, hora_fim) VALUES
((SELECT id FROM materias WHERE nome = 'Geografia'), 'Quarta', '10:00:00', '11:00:00'),
((SELECT id FROM materias WHERE nome = 'Matemática'), 'Quarta', '19:00:00', '20:00:00');

INSERT INTO horarios (materia_id, dia_semana, hora_inicio, hora_fim) VALUES
((SELECT id FROM materias WHERE nome = 'História'), 'Quinta', '08:30:00', '09:30:00'),
((SELECT id FROM materias WHERE nome = 'Português'), 'Quinta', '15:00:00', '16:00:00');

INSERT INTO horarios (materia_id, dia_semana, hora_inicio, hora_fim) VALUES
((SELECT id FROM materias WHERE nome = 'Biologia'), 'Sexta', '09:00:00', '10:00:00'),
((SELECT id FROM materias WHERE nome = 'Geografia'), 'Sexta', '14:00:00', '15:00:00');

INSERT INTO horarios (materia_id, dia_semana, hora_inicio, hora_fim) VALUES
((SELECT id FROM materias WHERE nome = 'Matemática'), 'Sábado', '10:00:00', '11:00:00'),
((SELECT id FROM materias WHERE nome = 'Português'), 'Sábado', '11:00:00', '12:00:00');

show tables;
select*from eventos;