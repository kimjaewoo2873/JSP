<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>Action Tag</title></head>
<body>
	<jsp:useBean id="person" class="ch04.com.dao.Person" scope="page">
	<jsp:setProperty name="person" property="name" value="김재우" />
	<jsp:setProperty name="person" property="number" value="2071463" />
	<p>아이디 : <jsp:getProperty name="person" property="name" />
	<p>학 번 : <jsp:getProperty name="person" property="number" />
	</jsp:useBean>
</body>
</html>