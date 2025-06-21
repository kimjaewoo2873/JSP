<%@ page contentType = "text/html; charset=utf-8" %>
<html>
<head><title>Action Tag</title></head>
<body>
	<h3>이 파일은 paramEx.jsp 파일입니다.</h3>
	<jsp:include page = "paramEx2.jsp" >
		<jsp:param name = "date" value="<%= new java.util.Date() %>" />
		<jsp:param name = "id" value="jaewoo"/>
		<jsp:param name = "name" value='<%= java.net.URLEncoder.encode("김재우") %>'/>
		<jsp:param name = "word" value='<%= java.net.URLEncoder.encode("오늘의 날짜와 시각") %>' />
		<jsp:param name = "date2" value='<%= java.util.Calendar.getInstance().getTime() %>' />
	</jsp:include>
</body>
</html>