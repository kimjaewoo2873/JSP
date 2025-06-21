<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>Action Tag</title></head>
<body>
	<h4>구구단 출력하기</h4>
	<jsp:useBean id="gugu" class="ch04.com.dao.GuGuDan" scope="page" >
		<jsp:setProperty name="gugu" property="num" value="5" />
		<% gugu.process(); %>
		<jsp:getProperty name="gugu" property="sb" />
	</jsp:useBean>
</body>
</html>