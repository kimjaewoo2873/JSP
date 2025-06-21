<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>Validation</title></head>
<script type="text/javascript">
	function checkLogin(){
		var form = document.getElementById("loginForm");
		var pattern1 = /[a-zA-Z]/;
		var pattern2 = /[0-9]/;
		var pattern3 = /[~!@\#$%<>^&*]/; // 공백 넣으면 공백 포함된다
		var pwd1 = form.pwd1.value;
		var pwd2 = form.pwd2.value;
		if(form.id.value == ""){
			alert("아이디 입력하세요.");
			form.id.focus();
			return;
		}
		if(pwd1 != pwd2){
			alert("비밀번호를 확인하세요.");
			return;
		}
		if(!pattern1.test(pwd1)||!pattern2.test(pwd1)||!pattern3.test(pwd1)||pwd1.length<8||pwd1.length>50){ // 하나라도 만족하면 진행
			alert("영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다.");
			return
		}	
		alert("굿");
		form.submit();
	}
</script>
<body>
	<form id ="loginForm" method="post">
		<p>아이디 : <input type="text" name="id">
		<p>비밀번호 : <input type="text" name="pwd1">
		<p>비밀번호 확인 : <input type="text" name="pwd2">
		<p><input type="button" value="전송" onclick="checkLogin()">
	</form>
</body>
</html>