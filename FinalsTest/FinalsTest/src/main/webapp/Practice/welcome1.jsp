<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>Cookie</title></head>
<body>
	<%
		Cookie cookies[] = request.getCookies();
		if(cookies == null){
			response.sendRedirect("cookie_out.jsp");
		}
		for(int i=0;i<cookies.length; i++){
			String user_id = cookies[i].getName();
			if(user_id.equals("userID")){
				if(cookies[i].getValue() == null){
					response.sendRedirect("cookie_out.jsp");
				} else {
					String id = cookies[i].getValue();
					out.println("<h3>" + id + "님 반갑습니다.</h3><br>");
					out.println(user_id);
					break;
				}
			}
		}
	%>
	<p><a href="cookie_out.jsp">로그아웃</a>
</body>
</html>