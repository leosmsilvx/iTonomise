package util;

import org.apache.commons.mail.*;

public class sendEmail {
	public static void mandarEmail(String email, int codigo) {
		String pagHtml = ("\r\n"
				+ "<!DOCTYPE html>\r\n"
				+ "<html>\r\n"
				+ "<head>\r\n"
				+ "<meta charset=UTF-8\" />\r\n"
				+ "<title>iTonomise</title>\r\n"
				+ "<style>\r\n"
				+ "body{\r\n"
				+ "    text-decoration: none;\r\n"
				+ "    color: black;\r\n"
				+ "}\r\n"
				+ ".container{\r\n"
				+ "    margin-left: 25%;\r\n"
				+ "	max-width: 40%;\r\n"
				+ "}\r\n"
				+ "</style>\r\n"
				+ "        </head>\r\n"
				+ "        <body>\r\n"
				+ "			<div class=\"container\">\r\n"
				+ "				<div style=\"padding-top: 5%; padding-bottom: 3%;\">\r\n"
				+ "                    <a style=\"text-align: center; font-size: 1.5em; margin-top: 0.83em; margin-bottom: 0.53em; font-weight: bold; display: block;\">iTonomise</a><br><br>\r\n"
				+ "                </div>\r\n"
				+ "                <div>\r\n"
				+ "                    <a>Seu codigo de recuperacaoo de senha e:</a>\r\n"
				+ "                </div>\r\n"
				+ "                <div style=\"margin-left: 41%; margin-top: 3%; margin-bottom: 3%; margin-right: 41%; padding: 1%; background-color: #EEE; text-align: center; border: 1px solid; border-color: black;\">\r\n"
				+ "                    <a style=\"text-decoration: none;\">"+codigo+"</a>\r\n"
				+ "                </div>\r\n"
				+ "                <div>\r\n"
				+ "		    		<a>Se o codigo nao funcionar,</a><br><br>\r\n"
				+ "                 <a>Solicite um novo codigo de verificacao e tente seguir estas instrucoes para solucionar o problema:</a><br><br>\r\n"
				+ "		    		<a>1 - Use uma aba anonima no navegador ou um navegador diferente</a><br><br>\r\n"
				+ "		    		<a>2 - Limpe o cache e os cookies do seu navegador</a><br><br>\r\n"
				+ "                 <a>3 - desative todos os complementos ou extensoes do navegador</a><br><br>\r\n"
				+ "                </div>\r\n"
				+ "			</div>	\r\n"
				+ "            <div style=\"padding-top: 1%; padding-bottom: 1%;\">\r\n"
				+ "                <footer>\r\n"
				+ "                    <div class=\"container\" style=\"border-top: 1px solid; border-color:lightgray\">\r\n"
				+ "                        <p style=\"padding-top: 1%; text-align: center;\">2022 iTonomise</p>\r\n"
				+ "                    </div>\r\n"
				+ "                </footer>\r\n"
				+ "            </div>\r\n"
				+ "        </div>\r\n"
				+ "        </body>\r\n"
				+ "</html>");		
		try {
			HtmlEmail javax = new HtmlEmail();
			javax.setHostName("smtp-mail.outlook.com");
			javax.setSmtpPort(587);
			javax.setAuthentication("itonomise@hotmail.com", "A%3x!GYRqUt|Gy7N");
			javax.setStartTLSEnabled(true);
			javax.setFrom("iTonomise@hotmail.com");
			javax.addTo(email);
			javax.setSubject("Código de recuperação iTonomise");
			javax.setHtmlMsg(pagHtml);
			javax.send();			
		} catch(EmailException e) {
			e.printStackTrace();
		}
	}

}
