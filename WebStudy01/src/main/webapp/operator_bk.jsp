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
String val1 = request.getParameter("val1");
String val2 = request.getParameter("val2");
String oper = request.getParameter("operate");
if(val1==null || val2==null || oper==null)return;
int a = Integer.parseInt(val1);
int b = Integer.parseInt(val2);
int result=0;
if (oper.equals("+")) {
	result=a+b;
} else if (oper.equals("-")) {
	result=a-b;
} else if (oper.equals("*")) {
	result=a*b;
} else if (oper.equals("/")) {
	result=a/b;
} 
//out.println("value 1:"+val1+
				//"<br>value 2:"+val2+
				//"<br>operator :"+oper+
				//"<br>result :"+result);
%>
value1 :<%=val1 %><br>	
value2 :<%=val2 %><br>
operator :<%=oper %><br>
Result :<%=result %>
</body>
</html>