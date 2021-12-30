<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="home.css">
<meta charset="UTF-8">
<title>login</title>
</head>
<style>
h1 {
	font-size: 35px;
}

td {
	font-size: 30px;
}
</style>
<h1>로그인</h1>
<hr>
<body align=center>

	<form method=post action="login_check.jsp">
		<table align=center>
			<tr>
				<td>아이디</td>
				<td><input type=text name=idname id=idname></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type=password name=passcode id=passcode></td>
			</tr>
			<tr>
				<td colspan=2 align=center><input type=submit value='로그인'>&nbsp;&nbsp;&nbsp;<input
					type=button value='취소' id=cancel></td>



				<td><a href="register.jsp">회원가입</a></td>
			</tr>

		</table>
	</form>

	<jsp:include page="10_footer.jsp" />
</body>
<script src='https://code.jquery.com/jquery-3.5.0.js'></script>
<script>
$(document)
.on('submit',function(){
	if ($('#idname').val()==''){
		alert('아이디를 입력해주세요.');
		return false;
	}
	else if($('#passcode').val() ==''){
	alert('비밀번호를 입력해주세요.')
	return false;
	} 
	else if($('#idname').val() != "<%=session.getAttribute("idname")%>" ||			<%-- <%%>에 ""로 안묶이면 문자열로 안보여서 앞에꺼랑 비교 불가능 --%>
			$('#passcode').val() != "<%=session.getAttribute("passcode")%>"){
		alert('아이디 비밀번호가 다릅니다.')
		return false; 
	}
	else {
		alert('로그인에 성공하였습니다.')
		return true;
	}
})
.on('click','#cancel',function(){
	document.location="home.jsp";
	return false;
});

		// 클릭을 했으면 return false; 를 한다.


</script>
</html>