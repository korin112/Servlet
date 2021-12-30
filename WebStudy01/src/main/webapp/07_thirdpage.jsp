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
out.println("thirdpage.jsp<br>");
out.println("하나의 PAGE속성: "+pageContext.getAttribute("name")+"<br>");
out.println("하나의 REQUEST속성: "+request.getAttribute("name")+"<br>");
out.println("하나의 SESSION속성: "+session.getAttribute("name")+"<br>");
out.println("하나의 APPLICATION속성: "+application.getAttribute("name")+"<br>");
%>
하나의 PAGE속성: ${pageScope.name} <br>
하나의 request속성 : ${requestScope.name }<br>
하나의 session속성 : ${sessionScope.name }<br>
하나의 application속성 : ${applicationScope.name }<br>
</body>
</html>