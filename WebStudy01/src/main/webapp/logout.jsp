<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

session.invalidate(); //모든 session attributes를 삭제
// Cookie c = new Cookie("id",null); // 쿠키 만들기
// 	c.setMaxAge(0); // 쿠키의 수명지정 365일짜리 쿠키
// 	response.addCookie(c);
// Cookie c1 = new Cookie("passcode",null); // 쿠키 만들기
// c.setMaxAge(0); // 쿠키의 수명지정 365일짜리 쿠키
// response.addCookie(c1);
response.sendRedirect("home.jsp");

// request.getRequestDispatcher("home.jsp").forward(request,response);

%>