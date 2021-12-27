<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setAttribute("idname",request.getParameter("idname"));
request.getRequestDispatcher("login.jsp").forward(request,response);

%>
</html>