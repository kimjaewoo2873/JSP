<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>Validation</title></head>
<script type="text/javascript" >
	function CheckKey(){ // 키 눌릴때마다 검사 메소드
		if(event.keyCode < 48 || event.keyCode > 57){ // 숫자가 아닐떄
			alert("숫자만 입력 가능합니다" + event.keyCode);
			event.returnValue = false; // text칸에 입력 안 시켜줌
		}
	}
</script>
<body>
	<form name="loginForm" action="#" method="post" >
		<p> 나 이 : <input type="text" name ="age" onkeypress ="CheckKey()">
			<input type="submit" value="전송">
	</form>
</body>
</html>
