<%@page import="dtos.ParamDTO"%>
<%@page import="dbConnection.DBOperations"%>
<%@page import="dtos.ReplyDTO"%>
<%@page import="dtos.ElectiveSubjectDTO"%>
<%@page import="dtos.Constants"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
ParamDTO paramDTO = new ParamDTO();
int ge = Integer.parseInt(request.getParameter("ge"));
int aec = Integer.parseInt(request.getParameter("aec"));
int vac = Integer.parseInt(request.getParameter("vac"));
int sec = Integer.parseInt(request.getParameter("sec"));
int dsc = Integer.parseInt(request.getParameter("dsc"));
String userName = (String) request.getSession().getAttribute(Constants.USER_ID);
ElectiveSubjectDTO electiveSubjectDTO = new ElectiveSubjectDTO(userName,ge,vac,aec,sec,dsc);
paramDTO.setData(electiveSubjectDTO);
ReplyDTO replyDTO = DBOperations.submitElectiveSubjects(paramDTO);
String errMsg;
String msg;
if(replyDTO.isErrFlag()){
	errMsg = replyDTO.getErrMsg();
	%><h2><%=errMsg%></h2><%
}
else{
	msg = replyDTO.getMsg();
	%><h2><%=msg%></h2><%
}
%>

</body>
</html>