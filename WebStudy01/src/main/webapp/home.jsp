<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>

<%
if(request.getAttribute("idname")==null){
	out.print("<a href='login.jsp'>로그인</a>"+"&nbsp;&nbsp;"+"<a href='register.jsp'>회원가입</a>");
} else{
	out.print(request.getAttribute("idname")+"<a href='logout.jsp'>로그아웃</a>");
}

%>
</body>
</html>