<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바빈 객체 생성하기(by using useBean action tag)</title>
</head>
<body>
<jsp:useBean id="member" class="com.ncs7.javabeans.MemberBean"/>

<!-- MemberBean member = new MemberBean(); 라고 설정해주는거임-->
<%
// 	member.setName("유승혁");
// 	member.setUserid("yoosh");
%>
<jsp:setProperty name="member" property="name" value="유승혁"/>
<jsp:setProperty name="member" property="userid" value="yoosh"/>
<%-- 이름 : <%=member.getName()%><br> --%>
<%-- 아이디 : <%=member.getUserid() %> --%>
이름 : <jsp:getPropert property="name" name="member"/>
아이디 : <jsp:getProperty property="userid" name="member"/>
</body>
</html>