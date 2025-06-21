<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Validation</title>
</head>
<script>
function checkLogin( ){
  // 본인이 작성하라
	var form = document.loginForm;
	var id = form.id.value;
	var pwd = form.passwd.value;
	var result1 = document.getElementById("result1");
	var result2 = document.getElementById("result2");
	
	var regExpID = /^[a-z]+$/;
	var regExpPW = /^[0-9]+$/;   // 문자열 전체 숫자, 숫자 1회 이상 반복, 숫자로 끝남
	
	if(regExpID.test(id)){
		result1.value = "유효";	
	} else {
		result1.value = "아이디는영문소문자만입력";
		form.id.select();
		return;
	}
	
	if(regExpPW.test(pwd)){
		result2.value = "유효";
	} else {
		result2.value = "비밀번호는 숫자로만 입력";
		form.passwd.select();
		return;
	}

} 
</script>
<body>
	<form name="loginForm">
		<p>아 이 디 : <input type="text" name="id">
		<p>비밀번호 : <input type="text" name="passwd">
		<p><input type="button" value="검사" onclick="checkLogin()">
		<p> 검사결과1 <input type="text" id ="result1"> <br>
		<p> 검사결과2 <input type="text" id ="result2"> <br>
	</form>
</body>
<html>