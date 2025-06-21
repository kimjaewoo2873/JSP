<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>Cookies</title></head>
<body>
	<%
		Cookie cookies [] = request.getCookies();
		if(cookies == null){
			response.sendRedirect("cookie_out.jsp");
		}
		for(int i=0; i<cookies.length; i++){
			String user_id = cookies[i].getName();
			if(user_id.equals("UserID")){		
	%>
				<h4><%= cookies[i].getValue()%>님 반갑습니다.</h4>
	<%
				break;
			}
		}
	%>	
	<a href="cookie_out.jsp">로그아웃</a>
</body>
</html>