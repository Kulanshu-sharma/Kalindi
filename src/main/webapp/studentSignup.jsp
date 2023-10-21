<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="bussinessLayer.*" import="dtos.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration</title>
</head>
<body>
<%
String enrollmentId = request.getParameter("enrollmentId");
String firstName = request.getParameter("firstName");
String lastName = request.getParameter("lastName");
String password = request.getParameter("password");
SignupDTO signupDTO = new SignupDTO();
signupDTO.setFirstName(firstName);
signupDTO.setLastName(lastName);
signupDTO.setPassword(password);
ReplyDTO replyDTO = Signup.registration(signupDTO);
if(replyDTO.isErrFlag()){
	%><h1><%=replyDTO.getErrMsg()%></h1>
<%}
else{
	%><h1><%=replyDTO.getMsg()%></h1>
<%}%>
</body>
</html>