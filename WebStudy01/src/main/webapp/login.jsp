<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
<form method=post action="login_check.jsp">
<table align=center>
<tr><td>아이디</td><td><input type=text name=idname id=idname></td></tr>
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
$(document)
.on('submit',function(){
	if($('#idname').val()==''){
	alert('아이디를 확인 해주세요.');
	return false;
	} else{
		alert('로그인에 성공했습니다.')
	}
}
</script>
</html>