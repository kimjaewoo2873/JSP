<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>Cookies</title></head>
<body>
	<%
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("pwd");
		
		if(user_id.equals("admin") && user_pw.equals("admin1234")){
			Cookie cookie_id = new Cookie("UserID", user_id);
			cookie_id.setMaxAge(60 * 60);
			response.addCookie(cookie_id);
			response.sendRedirect("welcome.jsp");
		}
		else{
			out.println("아이디 or 비밀번호 틀림");
		}
	%>
</body>
</html>
