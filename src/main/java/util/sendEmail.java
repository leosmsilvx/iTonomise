package util;

import org.apache.commons.mail.*;

public class sendEmail {
	public static void mandarEmail(String email, int codigo) {
		String pagHtml = ("\"\r\n"
				+ "				<!DOCTYPE html>\r\n"
				+ "				<html>\r\n"
				+ "				<head>\r\n"
				+ "				<meta charset=\"UTF-8\"/>\r\n"
				+ "				<title>iTonomise</title>\r\n"
				+ "				<style>\r\n"
				+ "				\r\n"
				+ "				body{\r\n"
				+ "				    text-decoration: none;\r\n"
				+ "				    color: black;\r\n"
				+ "				}\r\n"
				+ "				.container{\r\n"
				+ "				    margin-left: 10%;\r\n"
				+ "					max-width:60%;\r\n"
				+ "				}\r\n"
				+ "				</style>\r\n"
				+ "				        </head>\r\n"
				+ "				        <body>\r\n"
				+ "							<div class=\"container\">\r\n"
				+ "								<div style=\"padding-top: 2%; padding-bottom: 1%;\">\r\n"
				+ "				                    <a style=\"text-align: center; font-size: 1.5em; margin-top: 0.83em; margin-bottom: 0.2em; font-weight: bold; display: block;\">iTonomise</a><br><br>\r\n"
				+ "				                </div>\r\n"
				+ "				                <div>\r\n"
				+ "				                    <a>Seu código de recuperação de senha é:</a>\r\n"
				+ "                                </div>\r\n"
				+ "                                    <div style=\"margin-top: 3%; margin-bottom: 3%;\">\r\n"
				+ "                                        <a style=\"text-decoration: none; text-align: center; display: block; background-color: #EEE; border: 1px solid; border-color: black; padding: 1%; margin-left: 40%; margin-right: 40%;\">"+codigo+"</a>\r\n"
				+ "                                    </div>\r\n"
				+ "				                <div>\r\n"
				+ "						    		<a>Se o código não funcionar,</a><br><br>\r\n"
				+ "				                 <a>Solicite um novo código de verificação e tente seguir estas instruções para solucionar o problema:</a><br><br>\r\n"
				+ "						    		<a>1 - Use uma aba anônima no navegador ou um navegador diferente</a><br><br>\r\n"
				+ "						    		<a>2 - Limpe o cache e os cookies do seu navegador</a><br><br>\r\n"
				+ "				                 <a>3 - Desative todos os complementos ou extensões do navegador</a><br><br>\r\n"
				+ "				                </div>\r\n"
				+ "							</div>\r\n"
				+ "				            <div style=\"padding-top: 1%; padding-bottom: 1%;\">\r\n"
				+ "				                <footer>\r\n"
				+ "				                    <div class=\"container\" style=\"border-top: 1px solid; border-color:lightgray; text-align: center; padding-top: 1%;\">\r\n"
				+ "				                        <a>&#169; 2022 iTonomise</a>\r\n"
				+ "				                    </div>\r\n"
				+ "				                </footer>\r\n"
				+ "				            </div>\r\n"
				+ "				        </div>\r\n"
				+ "				        </body>\r\n"
				+ "				</html>\"");		
		try {
			HtmlEmail javax = new HtmlEmail();
			javax.setHostName("smtp.gmail.com");
			javax.setSmtpPort(465);
			javax.setAuthentication("iTonomise@gmail.com", "xsvxtrsdqskdwhvp");
			javax.setCharset("UTF-8");
			javax.setSSLOnConnect(true);
			javax.setFrom("iTonomise@gmail.com");
			javax.addTo(email);
			javax.setSubject("Código de recuperação de senha");
			javax.setHtmlMsg(pagHtml);
			javax.send();			
		} catch(EmailException e) {
			e.printStackTrace();
		}
	}

}
