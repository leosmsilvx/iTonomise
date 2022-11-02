package util;

import org.apache.commons.mail.*;

public class sendEmail {
	public static void mandarEmail(String email, int codigo) {
		try {
			Email javax = new SimpleEmail();
			javax.setHostName("smtp.sendgrid.net");
			javax.setSmtpPort(465);
			javax.setAuthentication("apikey", "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");
			javax.setSSLOnConnect(true);
			javax.setFrom("iTonomise@hotmail.com");
			javax.addTo(email);
			javax.setSubject("Código de recuperação iTonomise");
			javax.setMsg("Seu codigo de recuperação de senha é:\r\n\r\n"+codigo+"\r\n\n"
		    		+ "Se o código não funcionar, solicite um novo código de verificação e tente seguir estas instruções para solucionar o problema:\r\n"
		    		+ "Use uma aba anônima no navegador ou um navegador diferente\r\n"
		    		+ "Limpe o cache e os cookies do seu navegador, e desative todos os complementos ou extensões do navegador\r\n");
			javax.send();			
		} catch(EmailException e) {
			e.printStackTrace();
		}
	}

}
