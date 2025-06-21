<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>Action Tag</title></head>
<body>
	<h4>구구단 출력하기</h4>
	<jsp:include page = "4-9include_data.jsp" >
		<jsp:param name="number" value="5" />
	</jsp:include>
</body>
</html>