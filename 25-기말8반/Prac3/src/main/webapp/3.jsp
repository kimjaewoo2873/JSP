<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Title</title>
</head>
<body>
	<%
		//본인이 작성하라
		String id = request.getParameter("7_id");
		String pwd = request.getParameter("7_pw");
		
		session.setAttribute("id", id);
		if(id.equals("admin") && pwd.equals("1234")){
			response.sendRedirect("pass.jsp");
		} else {
			response.sendRedirect("fail.jsp");
		}
	%>
	
</body>
</html>