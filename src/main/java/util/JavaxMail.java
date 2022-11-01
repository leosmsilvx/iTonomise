package util;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class JavaxMail {

	public static void enviarEmail(String email, int codigo) {
	      String to = email;
	      String from = "iTonomise@gmail.com";
	      
	      final String username = "52f4a69ccc829d";
	      final String password = "e5181793902904";
	      
	      String host = "smtp.mailtrap.io";
	      
	      Properties props = new Properties();
	      props.put("mail.smtp.auth", "true");
	      props.put("mail.smtp.starttls.enable", "true");
	      props.put("mail.smtp.host", host);
	      props.put("mail.smtp.port", "587");

	      Session session = Session.getInstance(props);
	     
	      try {
	    Message message = new MimeMessage(session);
	    message.setFrom(new InternetAddress(from));
	    message.setRecipient(Message.RecipientType.TO, new InternetAddress(to));

	    message.setSubject("Código de recuperação iTonomise"); // Subtitulo
	    
	    message.setText("Seu codigo de recuperação de senha é:\r\n"+codigo+"\n" // Corpo email
	    		+ "Se o código não funcionar, solicite um novo código de verificação e tente seguir estas instruções para solucionar o problema:\r\n"
	    		+ "Use uma aba anônima no navegador ou um navegador diferente\r\n"
	    		+ "Limpe o cache e os cookies do seu navegador, e desative todos os complementos ou extensões do navegador\r\n");
	    
	    Transport.send(message);
	    System.out.println("Oi eu sou o email e fui enviado!");
	      } catch (MessagingException e) {
	         throw new RuntimeException(e);
	      }
	   }	
}
