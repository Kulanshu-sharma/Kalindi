<%@page import="dtos.FeedbackDTO"  import="bussinessLayer.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
 <%@page import="dtos.ReplyDTO" %>
 
<!DOCTYPE html>	
<html>
<head>
<meta charset="UTF-8">
<title>Message Sent</title>
    <script src="KalindiKiosk.js"></script>
</head>
    <style> 
        .error-container {
			padding: 10%;
			margin:10%;
            display: flex;  
            height: 50vh;
           
        }

        .error-message {
            max-width: 600px;
            padding: 0%;
            margin:0%;
            text-align:center;
            
            
        }
        
        button{
			width: 30%;
	        padding: 10px;
	        margin: 5px 0 5px 0;
            background-color:red;	
            border-radius: 50px;

		}
		
		.image-container {
			padding:0%;
			margin:50%;
			margin-top: 50%;
			height:0%;
			width:0%;
			
			
		}	
  </style>
<body>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String subject = request.getParameter("subject");
String message = request.getParameter("message");
FeedbackDTO feedbackDTO = new FeedbackDTO();
feedbackDTO.setName(name);
feedbackDTO.setEmail(email);
feedbackDTO.setSubject(subject);
feedbackDTO.setMessage(message);

ReplyDTO replyDTO = Feedback.sendFeedbackMail(feedbackDTO);
if(replyDTO.isErrFlag()){
	%>
	    <div class="error-container">
        <div class="error-message">
            <img style="text-align:center;width: -webkit-fill-available;" src="UNDERCONS.png">
            <p><h1>Oops! Something wrong here....</h1>
             <h3><%=replyDTO.getErrMsg()%></h3></p>
            <br>
            <button onclick="goToLoginPage()">Try again</button>
            <button onclick="goToHomePage()">Home</button>
        </div>
    </div>
    <%
}
else{
	%>
	 <div class="error-container">
        <div class="error-message">
            <p><h1>Thank you for Contacting us...</h1>
             <h3>We will Surely get back to you Soon :)</h3></p>
            <br>
            <button onclick="goToLoginPage()">Login Page</button>
            <button onclick="goToHomePage()">Home</button>
        </div>
    </div>
	<%
}
%>
</body>
</html>