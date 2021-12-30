<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="home.css">
</head>
<style>
table {
	border-collapse: collapse;
	border: 5px solid gray;
	font-size: 30px;
}

td {
	border: 2px solid gray;
	align: center;
}

h1 {
	font-size: 35px;
}
</style>
<h1>회원가입</h1>
<hr>
<body align=center>
	<form method=POST action="sign_check.jsp">
		<table align=center>
			<tr>
				<td align=left>실명</td>
				<td align=left><input type=text id=realname name=realname></td>
			</tr>
			<tr>
				<td align=left>성별</td>
				<td align=left size=40px><input type=radio id=male name=gender
					value=male>남성 <input type=radio id=female name=gender
					value=female>여성</td>
			</tr>

			<tr>
				<td align=left>로그인아이디</td>
				<td align=left><input type=text id=idname name=idname></td>
			</tr>
			<tr>
				<td align=left>비밀번호</td>
				<td align=left><input type=password id=passcode name=passcode
					id=passcode size=20></td>
			</tr>
			<tr>
				<td align=left>비밀번호 확인</td>
				<td align=left><input type=password id=passcode1 name=passcode1
					id=passcode1 size=20></td>
			</tr>


			<tr>
				<td align=left>관심분야</td>
				<td valign=top><input type=checkbox value=정치 id=politics
					name=interest>정치&nbsp; <input type=checkbox value=경제
					id=economics name=interest>경제&nbsp; <input type=checkbox
					value=사회 id=society name=interest>사회&nbsp; <input
					type=checkbox value=문화 id=culture name=interest>문화&nbsp;<br>
					<input type=checkbox value=역사 id=history name=interest>역사&nbsp;
					<input type=checkbox value=연예 id=entertainment name=interest>연예&nbsp;
					<input type=checkbox value=스포츠 id=sport name=interest>스포츠&nbsp;
					<input type=checkbox value=예술 id=art name=interest>예술&nbsp;
				</td>
			</tr>
			<tr>
				<td colspan=2><input type=submit value='가입완료'>
					&nbsp;&nbsp; <input type=reset value='취소' id=cancel1></td>
			</tr>
		</table>
	</form>

	<jsp:include page="10_footer.jsp" />
</body>
<script src='https://code.jquery.com/jquery-3.5.0.js'></script>
<script>
	$(document).on('submit', function() {
		//	if($('#passcode').val()==''){
		/*
		 유효성검사(validation) 결과가 허용범위면 return true -> submit 진행(서버로 전달)
		 허용 안되는 값이 있으면 return false -> submit 중단(서버로 전달 차단)
		 */
		if ($('#realname').val() == '') {
			alert('이름을 확인해주세요.');
			return false;
		}// submit이 취소된다.
		else if ($('input[name=gender]:checked').val() == undefined) {
			/*'input:radio[name=gender]').is(":checked") == false*///두가지 방법으로 쓸 수 있음
			alert('성별을 체크해주세요');
			return false;
		} else if ($('#idname').val() == '') {
			alert('로그인아이디를 확인해주세요')
			return false;
		} else if ($('#passcode').val() == '') {
			alert('비밀번호를 확인해주세요')
			return false;
		} else if ($('#passcode1').val() == '') {
			alert('비밀번호확인을 확인해주세요')
			return false;
		} else if ($('#passcode').val() != $('#passcode1').val()) {
			alert('비밀번호가 같지 않습니다');
			return false;
		} else if ($('input[name=interest]:checked').val() == undefined) {
			/*$('input:checkbox[name=interest]').is(":checked") == false*///두가지방법으로 쓸 수 있ㅇ므
			alert('관심분야를 확인해주세요');
			return false;
		} else {
			alert('회원가입이 완료되었습니다.');
			return true; //submit 진행된다.	맞으면 바로 login.jsp로 ㄱㄱ
		}
	});

	$(document).on('click', '#cancel1', function() {
		document.location = 'home.jsp';
	})
</script>
</html>













