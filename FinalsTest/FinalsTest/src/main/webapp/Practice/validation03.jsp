<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>Validation</title></head>
<script type="text/javascript">
	function checkPWD(pwd){
		var regEng = /[a-zA-Z]/;
		var regNum = /[0-9]/;
		var regSpc = /[~!@\#$%<>^&*]/; 
		if(pwd.length < 8){
			return false;
		}
		if(!regEng.test(pwd) || !regNum.test(pwd) || !regSpc.test(pwd)){
			return false;
		}
		return true;
	}
	function checkLogin(){
		var form = document.loginForm;
		var id = form.id.value;
		var pwd1 = form.pwd1.value;
		var pwd2 = form.pwd2.value;
		if(id==""){
			alert("아이디 입력");
			return;
		}
		if(pwd1 == "" || pwd2 == ""){
			alert("비밀번호 입력");
			return
		}
		if(pwd1 != pwd2){
			alert("비밀번호를 확인해주세요");
			return;
		}
		if(!checkPWD(pwd1)){
			alert("영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다.");
			return;
		}else{
			alert("굿");
		}
	}
</script>
<body>
	<form name ="loginForm" method="post">
		<p>아이디:<input type="text" name="id">
		<p>비밀번호:<input type="text" name="pwd1">
		<p>비밀번호 확인:<input type="text" name="pwd2">
		<p><input type="button" value="전송" onclick="checkLogin()">
	</form>
</body>
</html>