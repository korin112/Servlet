<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

session.invalidate(); //모든 session attributes를 삭제
response.sendRedirect("home.jsp");
// request.getRequestDispatcher("home.jsp").forward(request,response);
%>