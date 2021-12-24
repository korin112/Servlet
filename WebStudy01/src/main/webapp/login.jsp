<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<form method=post action="validate.jsp">
<table align=center>
<tr><td>아이디</td><td><input type=text name=idname></td></tr>
<tr><td>비밀번호</td><td><input type=password name=passcode></td></tr>
<tr><td colspan=2 align=center><input type=submit value='로그인'>&nbsp;
				<input type=reset value='비우기'>
				
<tr><td colspan=2 align=center><input type=button value='취소' id=cancel></td>
<td><a href="register.jsp">회원가입</a></td></tr>

</table>
</form>
</body>
<script src='https://code.jquery.com/jquery-3.5.0.js'></script>
<script>
$(document)
.on('click','#cancel',function(){
	document.location='home.jsp';
})
</script>
</html>