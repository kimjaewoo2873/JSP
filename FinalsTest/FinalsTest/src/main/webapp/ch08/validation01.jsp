<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>Validation</title></head>
<script type="text/javascript">
	function checkForm(){
	//	alert("아이디 : " + document.loginForm.id.value + "\n" +
	//			"비밀번호 : " + document.loginForm.passwd.value);
		var form = document.getElementById("loginForm");
		alert("아이디 : " + form.id.value + "\n" + 
				"비밀번호 : " + form.passwd.value);
	}
</script>
<body>
	<!-- <form name = "loginForm"> -->
	<form id="loginForm">
		<p>아 이 디 : <input type="text" name="id">
		<p>비밀번호 : <input type="password" name="passwd">
		<p><input type="submit" value="전송" onclick="checkForm()"> 
	</form>
</body>
</html>