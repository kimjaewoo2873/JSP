<%@ page contentType="text/html; charset=utf-8" %>
<html><head>
<title>Welcome</title>
</head>
<body>
	<%
		String id = (String)session.getAttribute("userID");
		if(id == null){
			response.sendRedirect("session.jsp");	
		} else {
			out.println("<h3>" + id + "님 반갑습니다.</h3>");
		}
	%>
	<a href = "session_out.jsp">로그아웃</a>
</body>
</html>