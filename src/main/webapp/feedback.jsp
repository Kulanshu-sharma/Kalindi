<%@page import="dtos.FeedbackDTO"  import="bussinessLayer.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
 <%@page import="dtos.ReplyDTO" %>
 
<!DOCTYPE html>	
<html>
<head>
<meta charset="UTF-8">
<title>FeedbackForm</title>
</head>
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
	%><h2 style="text-align:center;"><%=replyDTO.getErrMsg()%></h2><%
}
else{
	%><h2 style="text-align:center;">Message Delivered Successfully!!! They will Catch you Shortly</h2><%
}
%>
</body>
</html>