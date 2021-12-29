<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
 session.setAttribute("idname",request.getParameter("idname"));
 session.setAttribute("passcode",request.getParameter("passcode"));
 request.getRequestDispatcher("login.jsp").forward(request,response);
 %>

<%-- <jsp:forward page = "login.jsp"> --%>
<%-- <jsp:param name="idname" value="<%=request.getParameter("idname") %>"/> --%>
<%-- </jsp:forward> --%>

</html>