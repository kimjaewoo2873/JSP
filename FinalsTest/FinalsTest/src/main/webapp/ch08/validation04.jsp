<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>Validation</title></head>
<script type="text/javascript">
	function checkLogin(){
		var form = document.loginForm;
		
		for(i=0; i < form.id.value.length; i++){
			var ch = form.id.value.charAt(i);
			if((ch <'a' || ch > 'z')) { // 안 들어가는거 걸러냄
				alert("아이디는 영문 소문자만 입력 가능합니다!");
				form.id.select();
				return;
			}
		}
		if(isNaN(form.passwd.value)){ // 숫자:false / 숫자 아닌 경우:true
			alert("비밀번호는 숫자만 입력 가능합니다!");
			form.passwd.select();
			return;
		}
		
		form.submit();
	}
</script>
<body>
	<form name="loginForm" action="validation04_process.jsp" method="post">
		<p>아이디:<input type="text" name="id">
		<p>비밀번호:<input type="password" name="passwd">
		<p><input type="button" value="전송" onclick="checkLogin()">
	</form>
</body>
</html>