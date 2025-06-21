<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>Validation</title></head>
<script type="text/javascript">
	function checkLogin(){
		var form = document.loginForm;
		if(form.id.value==""){
			alert("아이디를 입력해주세요.");
			form.id.focus();
			return;
		}
		if(form.pwd.value==""){
			alert("비밀번호를 입력해주세요.")
			form.pwd.focus();
			return;
		}
		else if(form.pwd.value.includes(form.id.value)){
			alert("비밀번호는 ID를 포함할 수 없습니다.")
			form.pwd.focus();
			return;
		}
		form.submit();
	}
</script>
<body>
	<form name="loginForm" action="validation_process.jsp" method="post">
		<p>아이디 : <input type="text" name="id">
		<p>비밀번호 : <input type="password" name="pwd">
		<p><input type="button" value="전송" onclick = "checkLogin()">
	</form>
</body>
</html>