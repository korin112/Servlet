<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
request.removeAttribute("idname");
request.getRequestDispatcher("home.jsp").forward(request,response);
%>