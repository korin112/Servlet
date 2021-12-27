<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if (true) {
	request.setAttribute("idname","userid"); /*데이터전송하려면 이렇게 해야됨*/
// 	request.setAttribute("passcode",request.getParameter("passcode"));/*데이터전송하려면 이렇게 해야됨*/
	RequestDispatcher rd = request.getRequestDispatcher("home.jsp"); /*이게 있어야 login.jsp에서 전달가능*/
	rd.forward(request, response);
	//로그인 페이지로 이동, 데이터전송은 안됐음
 }
//  else {
/*  RequestDispatcher rd = request.getRequestDispatcher("login.jsp"); */
// 	rd.forward(request, response);
// 	out.println("로그인에 실패하였습니다.");
// 	//아이디 비밀번호 틀렸으니까 다시 login 페이지로 돌아옴
// }
%>
