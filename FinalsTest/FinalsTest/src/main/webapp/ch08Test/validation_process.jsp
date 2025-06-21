<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>Validation</title></head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
	%>
	<p>아이디 : <%= id %>
	<p>비밀번호 : <%= pwd %>
</body>
</html>