<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>Action Tag</title></head>
<body>
	<%
		String number = request.getParameter("number");
		int num = Integer.parseInt(number);
		for(int i=1;i<10;i++){
			out.println(num + " * " + i + " = " + (num*i) + "<br>");
		}
	%>
</body>
</html>