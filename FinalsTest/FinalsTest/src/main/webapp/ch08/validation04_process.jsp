<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>Validation</title></head>
<body>
	<h4>압력에 성공했습니다.</h4>
	<% 
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
	%>
	<p>아이디: <%= id %>
	<p>비밀번호: <%=passwd %>
</body>
</html>