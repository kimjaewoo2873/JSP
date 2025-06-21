<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Title</title>
</head>
<body>
	<%
		//본인이 작성하라
		String id = request.getParameter("id_12");
		String pwd = request.getParameter("pw_12");
		
		session.setAttribute("id_12", id);
		if(id.equals("bob") && pwd.equals("1212")){
			response.sendRedirect("pass.jsp");
		} else {
			response.sendRedirect("fail.jsp");
		}

		
	%>
	
</body>
</html>