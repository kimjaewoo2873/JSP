<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>Session</title></head>
<body>
	<% 
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("pwd");
		
		if(user_id.equals("admin") && user_pw.equals("1234")){
			session.setAttribute("user_id", user_id);
			response.sendRedirect("welcome.jsp");			
		}
		else{
			out.println("아이디와 비밀번호를 확인해주세요");	
		}
	%>
</body>
</html>