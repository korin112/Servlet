<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
if (request.getParameter("idname").equals(session.getAttribute("idname"))
		&& request.getParameter("passcode").equals(session.getAttribute("passcode"))) {
	RequestDispatcher rd = request.getRequestDispatcher("home.jsp"); /*이게 있어야 login.jsp에서 전달가능*/
	rd.forward(request, response);
	//로그인 페이지로 이동, 데이터전송은 안됐음
} else {
	RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
	rd.forward(request, response);

	// 	//아이디 비밀번호 틀렸으니까 다시 login 페이지로 돌아옴
}
%>


