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
		
		return replyDTO;
	}
	public static void main(String [] args) 
{	 

	String recipient = "vaishnavi.diya15@gmail.com"; 

	FeedbackDTO sender = new FeedbackDTO();
	String email = sender.getEmail();
	
	
	String host = "127.0.0.1"; 

	// Getting system properties 
	Properties properties = System.getProperties(); 

	// Setting up mail server 
	properties.setProperty("mail.smtp.host", host); 

    Session session = Session.getDefaultInstance(properties); 

	try
	{ 
		FeedbackDTO sc = new FeedbackDTO();
		MimeMessage message = new MimeMessage(session); 

		// Set From Field: adding senders email to from field. 
		message.setFrom(new InternetAddress(email)); 

		// Set To Field: adding recipient's email to from field. 
		message.addRecipient(Message.RecipientType.TO, new InternetAddress(recipient)); 

		// Set Subject: subject of the email 
		message.setSubject(sc.getSubject()); 

		// set body of the email. 
		message.setText(sc.getMessage()); 

		// Send email. 
		Transport.send(message); 
		System.out.println("Mail successfully sent"); 
	} 
	catch (Exception mex) 
	{ 
		mex.printStackTrace(); 
	} 
} 
} 
