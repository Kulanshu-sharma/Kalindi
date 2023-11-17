<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="bussinessLayer.*" import="dtos.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration</title>
<link rel="stylesheet" href="Dashboard.css">
<script src="KalindiKiosk.js"></script>
</head>
<body>
<%
String enrollmentId = request.getParameter("enrollmentNumber");
String firstName = request.getParameter("name");
String email = request.getParameter("email");
String department = request.getParameter("department");
String courses = request.getParameter("courses");
String semester = request.getParameter("semester");
String collegeRollNo = request.getParameter("rollNumber");
String password = request.getParameter("password");
SignupDTO signupDTO = new SignupDTO();
signupDTO.setFirstName(firstName);
signupDTO.setPassword(password);
signupDTO.setEmail_ID(email);
signupDTO.setDepartmentId(Integer.parseInt(department));
signupDTO.setCourseId(Integer.parseInt(courses));
signupDTO.setSemester(Integer.parseInt(semester));
signupDTO.setEnrollment_No(enrollmentId);
signupDTO.setCollege_Rollno(collegeRollNo);
ReplyDTO replyDTO = Signup.registration(signupDTO);
if(replyDTO.isErrFlag()){
	%><h1 style="color:red;text-align:center;"><%=replyDTO.getErrMsg()%></h1>
<%}
else{
	%><h1 style="color:green;text-align:center;"><%=replyDTO.getMsg()%></h1>
	<button id="buttonTab" class="buttonBack" onclick="goToHomePage()" style="display:block">Go back to Home page</button>
<%}%>
</body>
</html>