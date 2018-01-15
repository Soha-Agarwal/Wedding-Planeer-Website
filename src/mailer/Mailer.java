package mailer;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;  
import java.util.Random;

import javax.mail.*;  
import javax.mail.internet.InternetAddress;  
import javax.mail.internet.MimeMessage;  
public class Mailer {
	

	public static void send(String to){  
		  
		final String user="sohaagarwal93@gmail.com";//change accordingly  
		final String pass="soha@1234";  
		  
		//1st step) Get the session object    
		Properties props = new Properties();  
		props.put("mail.smtp.host", "smtp.gmail.com");//change accordingly  
		props.put("mail.smtp.auth", "true");  
		props.put("mail.smtp.starttls.enable", "true"); 
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory"); 
		props.put("mail.smtp.socketFactory.fallback","false");
		props.put("mail.smtp.port","465");
		props.put("mail.smtp.socketFactory.port","465");

		  
		Session session = Session.getDefaultInstance(props,  
		 new javax.mail.Authenticator() {  
		  protected PasswordAuthentication getPasswordAuthentication() {  
		   return new PasswordAuthentication(user,pass);  
		   }  
		});  
		//2nd step)compose message  
		try {  
		 MimeMessage message = new MimeMessage(session);  
		 message.setFrom(new InternetAddress(user));  
		 message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
		 message.setSubject("Authentication Failed");  
		 int randomNumber = new Random().nextInt(9000) + 1000;
		 message.setText("New Password:"+randomNumber);  
		 
		 final String JDBC_DRIVER="com.mysql.jdbc.Driver";
		 final String DB_URL="jdbc:mysql://localhost:3306/db101";
		 final String USER="user101";
		 final String PASSWORD="password";
		 PreparedStatement pstmt=null;
		 Class.forName(JDBC_DRIVER);
		 Connection conn=DriverManager.getConnection(DB_URL, USER,PASSWORD);
		 pstmt=conn.prepareStatement("update login set password=(?) where email=(?);");
		 pstmt.setString(2, to);
		 String strI = Integer.toString(randomNumber);
		 pstmt.setString(1,strI);
		 pstmt.executeUpdate();
		 //3rd step)send message  
		 Transport.send(message);  
		  
		 System.out.println("Done");  
		  
		 } catch (MessagingException e) { 
			    e.printStackTrace();

		    throw new RuntimeException(e); 
		 } catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}  
		      
		}  
		}  
