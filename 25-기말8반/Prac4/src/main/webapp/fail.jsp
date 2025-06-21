<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Cookie</title>
</head>
<body>
	<%  
		Cookie[] cookies = request.getCookies();
	    for (int i = 0; i < cookies.length; i++) {
			if (cookies[i].getName().equals("id")){
	%>
	
				<h4><%= cookies[i].getValue() %>님  비밀번호가 맞지 않습니다.</h4>
	<%
				i = cookies.length;}
    	}
	%>
</body>
</html>
