<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page session="true" %>
<%
	String userid=request.getParameter("idname");
	String passcode=request.getParameter("passcode");
	String  jspfile=null;	
	
if (userid.equals("fbtmdgurv")
		&& passcode.equals("human123")) {
	
// 	Cookie c=new Cookie("id",request.getParameter("idname"));
	
// 	c.setMaxAge(365*24*60*60);
// 	response.addCookie(c);
// 	response.addCookie(new Cookie("passcode",request.getParameter("passcode")));
	session.setAttribute("idname",userid);
	session.setAttribute("passcode",passcode);
	jspfile="home.jsp";
// 	RequestDispatcher rd = request.getRequestDispatcher("home.jsp"); /*이게 있어야 login.jsp에서 전달가능*/
// 	rd.forward(request, response);

	//로그인 페이지로 이동, 데이터전송은 안됐음
} else {
// 	RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
// 	rd.forward(request, response);
	jspfile="login.jsp";
	// 	//아이디 비밀번호 틀렸으니까 다시 login 페이지로 돌아옴
}
%>
<jsp:forward page="<%=jspfile %>"/>


