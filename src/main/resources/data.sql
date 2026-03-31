-- USERS
INSERT INTO users (id, username, password, role) VALUES
(1, 'admin',  'admin123', 'ADMIN'),
(2, 'ana',    'ana123',   'SELLER'),
(3, 'bianca', 'bianca123','SELLER'),
(4, 'fab',    'fab123',   'FABRICATION');

-- JOB (nome correto da tabela)
INSERT INTO job (id, contractor, customer, completed) VALUES
(1, 'The Proud House', 'Fisher', 1),
(2, 'Smith', 'Smith', 1);
