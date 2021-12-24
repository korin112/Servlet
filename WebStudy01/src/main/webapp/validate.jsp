<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(request.getParameter("idname").equals("fbtmdgurv") &&
	request.getParameter("passcode").equals("human123")){
		RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
		rd.forward(request,response);
		//로그인 페이지로 이동
	} else{
		RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
		rd.forward(request,response);
		out.println("로그인에 실패하였습니다.");
		//아이디 비밀번호 틀렸으니까 다시 register 페이지로 돌아옴
	}
%>
