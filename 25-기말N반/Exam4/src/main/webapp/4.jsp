<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Cookie</title>
</head>
<body>
	<%
		//본인이 작성하라
		String id = request.getParameter("id_9");
		String pwd = request.getParameter("pw_9");
		Cookie cookie = new Cookie("id_9",id);
		response.addCookie(cookie);
		if(id.equals("park") && pwd.equals("1212")){
			response.sendRedirect("pass.jsp");
		} else {
			response.sendRedirect("fail.jsp");
		}
	%>	
</body>
</html>
