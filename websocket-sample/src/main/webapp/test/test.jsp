<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Controller Test</title>
</head>
<body>

<%
String message = (String)request.getAttribute("message");
if(message != null){
	out.println("Message = " + message);
}else{
	out.println("No message found in request...");
}
%>

</body>
</html>