INSERT INTO autonomo(nome, sobrenome, cpf, tel, usuario, senha, email, descricao, tags, endereco, aval, nomeImg) VALUES 
('Leonardo', 'Silva', '131.180.146-44', '(37) 9 8827-4338', 'leosmsilvx', '123', 'leosmsilvx@gmail.com', 'Olá, pode me chamar de Leo, trabalho como encanador desde 2004...', ' Encanador(a)', 'Rua Lavras - nº 761 - Bairro São José - Divinópolis', '0', 'arquivo/leosmsilvxhomem1.png'),
('Nicole', 'Godoi', '643.465.480-40', '(38) 9 3272-1242', 'nick', '123', 'nickcleriagodoi@gmail.com', 'Oii me chamo Nicole, trabalho com pinturas em pequenas casas na região de Divinópolis.', ' Pintor(a)', 'Rua Paraíba - nº 2887 - Bairro Boa Vista - Divinópolis', '0', 'arquivo/nickmulher2.png'),
('Vitor', 'Cardoso', '915.832.140-38', '(37) 9 2242-5198', 'vitorcard', '123', 'vitorcardoso2003@gmail.com', 'Opa, me chamo Vitor faço trabalho com faxinas em empresas divinopolitanas.', ' Faxineiro(a)', 'Rua Treze - nº 178 - Bairro São Cristóvão - Divinópolis', '0', 'arquivo/vitorcardhomem2.png'),
('Guilherme', 'Silva', '604.077.750-80', '(34) 9 2975-7173', 'guiform', '123', 'guiform@gmail.com', 'Olá papais e mamães, desde 2010 trabalho como cuidador e orientador de crianças, amo o que eu faço!', ' Babá', 'Rua Santa Rita - nº 965 - Bairro Vila Nova - Divinópolis', '0', 'arquivo/guiformhomem3.png'),
('Ana Laura', 'Maia', '933.363.780-01', '(32) 9 3073-8051', 'anamaia', '123', 'anamaia18@gmail.com', 'Oi gentes, me chamo Ana e trabalho com redes eletricas, focada em casas e pequenos apartamentos.', ' Eletricista', 'Rua Pernambuco - nº 88 - Bairro Centro - Divinópolis', '0', 'arquivo/anamaiamulher1.png'),
('João', 'Eduardo', '768.951.190-27', '(35) 9 3441-9373', 'jeduardo', '123', 'joaoeduardo@gmail.com', 'Me chamo João, trabalho como pedreiro e realizo qualquer trabalho na região de Divinópolis.', ' Pedreiro', 'Rua Santo Antonio - nº 1717 - Bairro Pelotas - Divinópolis', '0', 'arquivo/jeduardohomem4.png'),	
('Pedro', 'Diniz', '361.483.740-80', '(34) 9 2838-4530', 'peper', '123', 'pepertrabalhas@gmail.com', 'Ohayo, me chamo Pedro, e trabalho com Cosplays de anime!', ' Dançarino(a)', 'Rua Liberdade - nº 39 - Bairro Luz - Divinópolis', '0', 'arquivo/peperhomem5.png'),
('Thalisson', 'Santos', '992.028.600-17', '(31) 9 2566-5484', 'mthlssn', '123', 'mthlssn@gmail.com', 'Hello World, me chamo thalisson, trabalho como programador, atualmente estou desenvolvendo Cryptids, um jogo para PC.', ' Programador(a)', 'Rua Lavras - nº 761 - Bairro São José', '0', 'arquivo/mthlssnhomem6.png');

INSERT INTO usuario(nome, sobrenome, cpf, tel, usuario, senha, email, endereco, nomeImg) VALUES
('Hugo', 'Souza', '922.835.750-95', '(38) 9 3442-6263', 'hugosouza', '123', 'hsousasantos03@gmail.com', 'Rua Natal - nº 534 - Bairro Planalto - Divinópolis', 'arquivo/hugosouzahomem7.png'),
('Rafael', 'Santos', '529.452.730-80', '(35) 9 2242-5222', 'rafasantos', '123', 'rafasantos1@gmail.com', 'Rua São Luiz - nº 653 - Bairro Flores - Divinópolis', 'arquivo/rafasantoshomem8.png'),
('Suelane', 'Soares', '353.498.870-17', '(31) 9 2868-5045', 'suelane.soares', '123', 'suelane.soares@gmail.com', 'Rua Santo Antônio - nº 11 - Bairro São Francisco - Divinópolis', 'arquivo/suelane.soaresmulher3.png'),
('Bruno', 'Silva', '507.108.310-80', '(32) 9 3497-4794', 'brunosmsilva', '123', 'brunosmsilva@gmail.com', 'Rua Parnamirim - nº 100 - Bairro Boa Vista - Divinópolis', 'arquivo/brunosmsilvahomem9.png'),
('Ana', 'Clara', '868.865.950-83', '(32) 9 3028-635', 'claraana', '123', 'claraana98@gmail.com', 'Rua Alagoas - nº 73 - Bairro Industrial - Divinópolis', 'arquivo/claraanamulher4.png'),
('Guilherme', 'Rezende', '290.611.950-47', '(35) 9 3210-6964', 'guigui795', '123', 'guigui795@gmail.com', 'Rua Goias - nº 224 - Bairro Arapiraca - Divinópolis', 'arquivo/guigui795homem10.png');

INSERT INTO contrato(idAutonomo, idUsuario, titulo, valor, descricao, dataInicio, duracaoT, duracaoN, localizacao, stats, tipoCriador, finalAut, finalUser, foiAvaliado) VALUES
(NULL, '1', 'Preciso de um professor de música', 'Indefinido', 'Eu estou começando na área de música sozinha, e estava procurando por um professor que esteja disposto a me acompanhar e ensinar mais sobre essa área, comecei a tocar flauta.', 'Indefinido', 'Horas', '2', 'Se tiver escola, pode ser na escola, ou talvez na minha casa, Rua Natal - nº 534 - Bairro Planalto - Divinópolis', 'Não aceito', 'comum', '0', '0', '0'),
(NULL, '1', 'Minha porta estragou', 'Indefinido', 'A porta da minha cozinha estragou, preciso de um marceneiro para concerta-la', 'Indefinido', NULL, 'Indefinido', 'Rua Natal - nº 534 - Bairro Planalto - Divinópolis', 'Não aceito', 'comum', '0', '0', '0'),
('1', '1', 'Minha pia entupiu', 'Indefinido', 'Minha pia entupiu depois que eu estava lavando a louça', 'Indefinido', NULL, 'Indefinido', 'Rua Natal - nº 534 - Bairro Planalto - Divinópolis', 'Pendente', 'comum', '0', '0', '0'),
('7', '1', 'Preciso de dançarino', 'Indefinido', 'Preciso de um dançarino para realizar uma coreografia na festa de final de ano, vamos ter ensaios antes.', '2022-12-31', NULL, 'Indefinido', 'Rua Natal - nº 534 - Bairro Planalto - Divinópolis', 'Pendente', 'comum', '0', '0', '0'),
('5', '1', 'Portão eletronico emperrou', 'Indefinido', 'Depois da chuva o portão eletronico da garagem estragou e eu precisava de alguém para arruma-lo', 'Indefinido', '', 'Indefinido', 'Rua Natal - nº 534 - Bairro Planalto - Divinópolis', 'Aceito', 'comum', '0', '0', '0'),
('3', '1', 'Limpar minha casa', 'Indefinido', 'Preciso de alguém para limpar minha casa para que ela esteja limpa para uma festa dia 31/10', '2022-12-30', '', 'Indefinido', 'Rua Natal - nº 534 - Bairro Planalto - Divinópolis', 'Aceito', 'comum', '0', '0', '0'),
('4', '1', 'Cuidar do meu priminho', 'Indefinido', 'Preciso de alguém para cuidar do meu priminho de 8 anos para que eu possa ir ao médico, a consulta vai demorar umas 3 horas...', '2022-11-29', 'Horas', '3', 'Rua Natal - nº 534 - Bairro Planalto - Divinópolis', 'Finalizado', 'comum', '1', '0', '0'),
('2', '1', 'Pintar uma infiltração', 'Indefinido', 'Preciso de uma pessoa que pinte uma parede do meu quarto em que houve uma infiltração', 'Indefinido', '', 'Indefinido', 'Rua Natal - nº 534 - Bairro Planalto - Divinópolis', 'Finalizado', 'comum', '1', '1', '0'),
('6', '1', 'Arrumar o passeio da garagem', 'Indefinido', 'Preciso de um pedreiro para arrumar a rampa do passeio em frente a minha garagem, que quebrou após um pequeno acidente.', 'Indefinido', '', 'Indefinido', 'Rua Goias - nº 12 - Bairro Centro - Divinópolis', 'Avaliado', 'comum', '1', '1', '1'),
('8', '1', 'Fazer um joguinho', 'Indefinido', 'Preciso de um jogo em GDScript para um trabalho escolar, já tenho feito a história e os templates dos personagens.', 'Indefinido', '', 'Indefinido', 'Trabalho online', 'Avaliado', 'comum', '1', '1', '1'),
('5', NULL, 'Arrumo qualquer equipamento elétrico', '200.00', 'Eu realizo qualquer serviço/conserto de equipamento eletrônico pelo valor descrito no contrato.', 'Indefinido', NULL, 'Indefinido', 'Vou até você', 'Não aceito', 'autonomo', '0', '0', '0'),
('3', NULL, 'Trabalho como faxineiro para qualquer grande empresa', '500.00', 'Realizo qualquer serviço de faxina para grandes empresas pelo valor no contrato', 'Indefinido', 'Horas', '2', 'No sua localização', 'Não aceito', 'autonomo', '0', '0', '0'),
('4', NULL, 'Serviço de babá', '150.00', 'Realizo meu serviço de babá, toda semana, tenho os seguintes dias livres, terça-feira, quinta-feira e sábado.', 'Indefinido', NULL, 'Indefinido', 'Sua localização', 'Não aceito', 'autonomo', '0', '0', '0'),
('2', NULL, 'Pintora de rodapé', 'Indefinido', 'Realizo qualquer serviço de pintura, em rodapés, devemos combinar o valor pelo whatsapp antes...', 'Indefinido', NULL, 'Indefinido', 'Sua casa/localização', 'Não aceito', 'autonomo', '0', '0', '0'),
('6', NULL, 'Faço qualquer serviço de pedreiro', '99.99', 'Realizo qualquer serviço de pedreiro, como arrumar seu piso, levantar uma parede, bater uma laje, etc', 'Indefinido', NULL, 'Indefinido', 'Qualquer região próximo a Divinópolis', 'Não aceito', 'autonomo', '0', '0', '0'),
('8', '1', 'Fazer programa em flutter', 'Indefinido', 'Preciso de um aplicativo em flutter para um trabalho escolar, é necessário realizar um cadastro e um login com ligação ao banco de dados ', '2022-12-20', '', 'Indefinido', 'Trabalho online', 'Avaliado', 'comum', '1', '1', '1'),
('8', NULL, 'Realizo trabalhos escolares ligados a programação POO', 'Indefinido', 'Realizo qualquer trabalho escolar de nível \"Jr.\" ligados a programação orientada a objeto, tenho experiencia em GDScript, Java e Flutter.', 'Indefinido', NULL, 'Indefinido', 'Trabalho online', 'Não aceito', 'autonomo', '0', '0', '0');

INSERT INTO avaliacao(idAutonomo, idUsuario, idContrato, valor) VALUES
('6', '1', '9', '5'),
('8', '1', '10', '3'),
('8', '1', '16', '4');

USE iTonomise;
SELECT * FROM usuario;
SELECT * FROM autonomo;
SELECT * from contrato;
SELECT * FROM avaliacao;