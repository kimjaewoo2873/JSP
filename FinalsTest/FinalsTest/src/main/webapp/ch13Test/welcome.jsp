<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>Session</title></head>
<body>
	<% 
		String id = (String)session.getAttribute("user_id");
		
		if(id != null){
			out.println("<h4>" + id + "님 반갑습니다.</h4>");
		}
		else{
			response.sendRedirect("session_out.jsp");
		}
	%>
	<a href = "session_out.jsp">로그아웃</a>
</body>
</html>