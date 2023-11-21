package bussinessLayer;
import java.util.*; 
import javax.mail.*; 
import javax.mail.internet.*; 
import dtos.FeedbackDTO;
import dtos.ReplyDTO;


public class Feedback 
{ 
	public static ReplyDTO sendFeedbackMail(FeedbackDTO feedbackDTO) {
		ReplyDTO replyDTO = new ReplyDTO();
		String subject = feedbackDTO.getName()+" Query : "+feedbackDTO.getSubject();
        String message = "Dear Tech Elites Team,<br><br>"+feedbackDTO.getEmail()+" sent a message. Please Have a look<br><br><b>"+feedbackDTO.getMessage()+"</b><br><br>Thanks<br>TechElites Team";
		String to = "helpdesk.techelites12@gmail.com";
		String from = "helpdesk.techelites12@gmail.com";
		String pass = "rxmj ubyd mbrs jevt"; 
		try{
			Feedback.send(from,pass,to,subject,message); 
		}
		catch (Exception e) {
			replyDTO.setErrMsg("Mail Server Down!!! Message Not Sent");
			replyDTO.setErrFlag(true);
			return replyDTO;
		}   
		replyDTO.setMsg("Mail Sent Successfully");
		replyDTO.setErrFlag(false);
        return replyDTO;
	}
	
	public static void send(String from,String password,String to,String sub,String msg) throws Exception{  
		//Get properties object    
		Properties props = new Properties();    
		props.put("mail.smtp.host", "smtp.gmail.com");    
		//props.put("mail.smtp.socketFactory.port", "465");    
		props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");    
		props.put("mail.smtp.auth", "true");    
		props.put("mail.smtp.port", "465");    
		props.put("mail.smtp.starttls.enable", "true");
		//props.put("mail.smtp.starttls.required", "true");
		props.put("mail.smtp.ssl.protocols", "TLSv1.2");
		//get Session   
		Session session = Session.getDefaultInstance(props,    
				new javax.mail.Authenticator() {    
			protected PasswordAuthentication getPasswordAuthentication() {    
				return new PasswordAuthentication(from,password);  
			}    
		});    
		//compose message    
		  
			MimeMessage message = new MimeMessage(session);    
			message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));    
			message.setSubject(sub);    
			message.setContent(msg,"text/html");    
			//send message  
			Transport.send(message);    
			System.out.println("message sent successfully");     
	}  
} 
