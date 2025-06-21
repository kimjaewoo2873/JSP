<%@ page contentType="text/html; charset=utf-8"%>
<%-- 본인이 작성하라  --%> 
<html>
<head><title>8</title></head>
<body>
	<%
		String num = request.getParameter("num");
		String id = request.getParameter("str");
		int value = Integer.parseInt(num) + 2;
		out.println("(입력값+2) " + value + "<br>");
		out.println("아이디: " + id);
	%>
</body>
</html>

<%-- 본인이 작성하라 종료 --%> 
