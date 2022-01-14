<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="home.css">


<meta charset="UTF-8">
<title>회원정보관리</title>
</head>
<body align=center>

	<jsp:include page="10_header.jsp"/>

	<%
	if (session.getAttribute("idname") == null) {
		out.print("<a href='login.jsp' >로그인</a>" + "&nbsp;&nbsp;" + "<a href='register.jsp'>회원가입</a>");
	} else {
		out.print(session.getAttribute("idname") + "&nbsp;&nbsp;" + "<a href='logout.jsp'>로그아웃</a>");
	}

	// 	Cookie[] cookies=request.getCookies();
	// 	boolean flag=true;
	// 	for(Cookie c:cookies){
	// 		if(c.getName().equals("id")){
	// 			out.println(c.getValue()+"&nbsp;&nbsp;<a href='logout.jsp'>로그아웃</a>");
	// 			flag=false;
	// 			break;
	// 		}
	// 	}
	// 	if(flag==true){
	// 		out.println("<a href='login.jsp'>로그인</a>&nbsp;&nbsp;<a href='register.jsp'>회원가입</a>");
	// 	}
	%>

	<jsp:include page="10_footer.jsp" />

</body>
<script src='https://code.jquery.com/jquery-3.5.0.js'></script>
<script>
	
</script>
</html>