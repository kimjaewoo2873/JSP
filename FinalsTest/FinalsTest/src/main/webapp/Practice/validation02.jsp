<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>Validation</title></head>
<script type="text/javascript">
	function checkPWD(pwd){
		var first;
		var second;
		var third;
	
		for(var i = 0; i< pwd.length - 2; i++){
			first = pwd.charCodeAt(i);
			second = pwd.charCodeAt(i + 1);
			third = pwd.charCodeAt(i + 2);
			if((first + 1 == second) && (second + 1 == third))
				return false;
		}
		return true;
	}
	function checkLogin(){
		var form = document.getElementById("loginForm");
		var id = form.id.value;
		var pwd = form.pwd.value;
		if(id == ""){
			alert("아이디를 입력하세요");
			return;
		}
		if(pwd == ""){
			alert("비밀번호를 입력하세요");
			return;
		}
		if(!checkPWD(pwd)){
			alert("영문, 숫자는 3자 이상 연속 입력할 수 없습니다.");
			return;
		}
		else
			alert("굿");
	}
</script>
<body>
	<form id="loginForm">
		<p>아이디: <input type="text" name="id">
		<p>비밀번호: <input type="text" name="pwd">
		<p><input type="button" value="전송" onclick="checkLogin()">
	</form>
</body>
</html>