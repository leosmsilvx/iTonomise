# iTonomise
Trabalho de Conclusão de Curso "iTonomise" CEFET-MG 2022

### Integrantes:
- [Leonardo Silva](https://github.com/leosmsilvx)
- [Emily Bianca](https://github.com/emystarxx)
- [Hugo Souza](https://github.com/Hugoxtoso)

## Como Instalar
Para rodar o projeto iTonomise, é necessário instalar:
- [Tomcat v9.0 Server](https://tomcat.apache.org/download-90.cgi)
- [MySQL v8.0](https://dev.mysql.com/downloads/installer/)
- [Eclipse IDE](https://www.eclipse.org/downloads/)

## Configurando Eclipse IDE
Configurar o Eclipse é bem simples, primeiro instale a versão `Eclipse IDE for Enterprise Java and Web Developers`

Após ter instalado, clique em `File > Open projects from system file` e selecione a pasta do iTonomise.

## Configurando MySQL
Instale o MySQL normalmente e inicie uma nova instância local.

Abra essa instância e na parte superior clique em `Server > Users and Privileges`

Clique em `Add account` e troque o login por "adm" e coloque a senha "adm123"

Em `Schema Privileges` clique em `Add Entry...` e selecione todas as opções e dê aplicar.

## Configurando o banco no MySQL
Rode os seguintes scripts na instância local:
- [`DDL_iTonomise.sql`](https://github.com/leosmsilvx/iTonomise/blob/main/DDL_iTonomise.sql) (Criação de `tables`)
- [`DML_iTonomise.sql`](https://github.com/leosmsilvx/iTonomise/blob/main/DML_iTonomise.sql) (Criação de `dados no banco`)

## Configurando o Tomcat
Para configurar o **Tomcat v9.0 Server** devemos abrir o Eclipse IDE.

Na parte inferior clique em `Servers` e na parte vazia clique com o botão direito e `New > Server`

Selecione `Apache` e depois `Tomcat v9.0 Server` e adicione a pasta do tomcat.

## Rodando a aplicação
Para rodar o iTonomise em seu navegador, pelo Eclipse, basta agora clicar com o botão direito no projeto e `Run as > Run on server`(Se necessário selecione o Tomcat)
