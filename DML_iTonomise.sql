INSERT INTO autonomo(nome, sobrenome, cpf, tel, usuario, senha, email, descricao, tags, endereco, aval) VALUES 
('Leonardo', 'Silva', '13118014644', '37988274338', 'leosmsilvx', '123', 'leosmsilvx@gmail.com', 'Olá, pode me chamar de Leo, trabalho como encanador desde 2004...', 'Encanador(a)', 'Rua Lavras - nº 761 - Bairro São José - Divinópolis', '0'),
('Nicole', 'Godoi', '64346548040', '38932721242', 'nick', '123', 'nickcleriagodoi@gmail.com', 'Oii me chamo Nicole, trabalho com pinturas em pequenas casas na região de Divinópolis.', 'Pintor(a)', 'Rua Paraíba - nº 2887 - Bairro Boa Vista - Divinópolis', '0'),
('Vitor', 'Cardoso', '91583214038', '37922425198', 'vitorcard', '123', 'vitorcardoso2003@gmail.com', 'Opa, me chamo Vitor faço trabalho com faxinas em empresas divinopolitanas.', 'Faxineiro(a)', 'Rua Treze - nº 178 - Bairro São Cristóvão - Divinópolis', '0'),
('Guilherme', 'Silva', '60407775080', '34929757173', 'guiform', '123', 'guiform@gmail.com', 'Olá papais e mamães, desde 2010 trabalho como cuidador e orientador de crianças, amo o que eu faço!', 'Babá', 'Rua Santa Rita - nº 965 - Bairro Vila Nova - Divinópolis', '0'),
('Ana Laura', 'Maia', '93336378001', '32930738051', 'anamaia', '123', 'anamaia18@gmail.com', 'Oi gentes, me chamo Ana e trabalho com redes eletricas, focada em casas e pequenos apartamentos.', 'Eletricista', 'Rua Pernambuco - nº 88 - Bairro Centro - Divinópolis', '0'),
('João', 'Eduardo', '76895119027', '35934419373', 'jeduardo', '123', 'joaoeduardo7gmail.com', 'Me chamo João, trabalho como pedreiro e realizo qualquer trabalho na região de Divinópolis.', 'Pedreiro', 'Rua Santo Antonio - nº 1717 - Bairro Pelotas - Divinópolis', '0'),	
('Pedro', 'Diniz', '36148374080', '34928384530', 'peper', '123', 'pepertrabalhas@gmail.com', 'Ohayo, me chamo Pedro, e trabalho com Cosplays de anime!', 'Cosplayer', 'Rua Liberdade - nº 39 - Bairro Luz - Divinópolis', '0'),
('Thalisson', 'Santos', '99202860017', '31925665484', 'mthlssn', '123', 'mthlssn@gmail.com', 'Hello World, me chamo thalisson, trabalho como programador, atualmente estou desenvolvendo Cryptids, um jogo para PC.', 'Programador', 'Rua Lavras - nº 761 - Bairro São José', '0');

INSERT INTO usuario(nome, sobrenome, cpf, tel, usuario, senha, email, endereco) VALUES
('Maria', 'Isabel', '92283575095', '38934426263', 'mabel', '123', 'mabel88@gmail.com', 'Rua Natal - nº 534 - Bairro Planalto - Divinópolis'),
('Rafael', 'Santos', '52945273080', '35922425222', 'rafasantos', '123', 'rafasantos1@gmail.com', 'Rua São Luiz - nº 653 - Bairro Flores - Divinópolis'),
('Suelane', 'Soares', '35349887017', '31928685045', 'suelane.soares', '123', 'suelane.soares@gmail.com', 'Rua Santo Antônio - nº 11 - Bairro São Francisco - Divinópolis'),
('Bruno', 'Silva', '50710831080', '32934974794', 'brunosmsilva', '123', 'brunosmsilva@gmail.com', 'Rua Parnamirim - nº 100 - Bairro Boa Vista - Divinópolis'),
('Ana', 'Clara', '86886595083', '3230028635', 'claraana', '123', 'claraana98@gmail.com', 'Rua Alagoas - nº 73 - Bairro Industrial - Divinópolis'),
('Guilherme', 'Rezende', '29061195047', '3532106964', 'guigui795', '123', 'guigui795@gmail.com', 'Rua Goias - nº 224 - Bairro Arapiraca - Divinópolis');

INSERT INTO contrato(titulo, valor, descricao, dataInicio, duracaoT, duracaoN, localizacao, stats, tipoCriador, finalAut, finalUser, foiAvaliado, idAutonomo, idUsuario) VALUES
("contrato1", "100", "123", "Indefinido", "Indefinido", "Indefinido", "123", 0, "comum", 1, 1, 0, 1, 1),
("contrato2", "100", "123", "Indefinido", "Indefinido", "Indefinido", "123", 0, "comum", 1, 1, 0, 1, 1),
("contrato3", "100", "123", "Indefinido", "Indefinido", "Indefinido", "123", 0, "comum", 1, 1, 0, 1, 1),
("contrato4", "100", "123", "Indefinido", "Indefinido", "Indefinido", "123", 0, "comum", 1, 1, 0, 1, 1),
("contrato5", "100", "123", "Indefinido", "Indefinido", "Indefinido", "123", 0, "comum", 1, 1, 0, 1, 1);

SELECT * FROM usuario;

SELECT * FROM autonomo;

SELECT * FROM contrato;

SELECT * FROM avaliacao;