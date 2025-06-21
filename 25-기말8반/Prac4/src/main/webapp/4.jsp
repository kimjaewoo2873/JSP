<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Cookie</title>
</head>
<body>
	<%
		//본인이 작성하라
		String id = request.getParameter("id_20");
		String pwd = request.getParameter("pw_20");
		
		Cookie cookie_id = new Cookie("id", id);
		response.addCookie(cookie_id);
		
		if(id.equals("choi") && pwd.equals("1234")){
			response.sendRedirect("pass.jsp");
		} else {
			response.sendRedirect("fail.jsp");
		}
	%>	
</body>
</html>
