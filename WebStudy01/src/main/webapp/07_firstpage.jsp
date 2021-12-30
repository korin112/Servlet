<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>First Page</title>
</head>
<body>
<%
	pageContext.setAttribute("name","page man");
	request.setAttribute("name","request man");
	session.setAttribute("name","session man");
	application.setAttribute("name","application man");
%>	
	<!-- out.println("firstPage.jsp<br>"); -->
	하나의 page속성 : ${pageScope.name } <br>
	<!-- out.println("하나의 PAGE속성: "+pageContext.getAttribute("name")+"<br>"); -->
	하나의 request속성 : ${requestScope.name }<br>
	<!-- out.println("하나의 REQUEST속성: "+request.getAttribute("name")+"<br>"); -->
	하나의 session 속성 : ${sessionScope.name }<br>
	<!-- out.println("하나의 SESSION속성: "+session.getAttribute("name")+"<br>"); -->
	하나의 application 속성 : ${applicationScope.name }<br>
	<!-- out.println("하나의 APPLICATION속성: "+application.getAttribute("name")+"<br>"); -->
	
	
	<!-- /* RequestDispatcher rd = request.getRequestDispatcher("07_secondpage.jsp");
	rd.forward(request, response); 위아래 똑같은 코드임*/ -->
<%-- <%	request.setAttribute("name","request man" );
	request.getRequestDispatcher("07_secondpage.jsp").forward(request,response); // 쓰면 바로 secondpage로 넘어감 포워드방식
	
	response.sendRedirect("07_secondpage.jsp?name="+request.getAttribute("name")); // redirect 방식
	 %> --%>
<%@ page import="java.net.URLEncoder" %>
<%-- <%
String name=(String)request.getAttribute("name"); //<- Object
	response.sendRedirect("07_secondpage.jsp?name="+URLEncoder.encode(name,"UTF-8"));
%> --%>	
<!-- //redirect 방식은  -->	
	<!-- 페이지 이동하는거임 -->
</body>
</html>