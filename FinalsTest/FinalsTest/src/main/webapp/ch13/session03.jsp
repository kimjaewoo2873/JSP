<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.Enumeration" %>
<html>
<head><title>Session</title></head>
<body>
	<%
	
		session.setAttribute("userID", "admin");
		session.setAttribute("userPW", "1234");
	
		String name;
		String value;
		
		Enumeration en = session.getAttributeNames();
		int i = 0;
		
		while(en.hasMoreElements()){
			i++;
			name = en.nextElement().toString();
			value = session.getAttribute(name).toString();
			out.println("설정된 세션의 속성 이름 [ " + i + " ] : " + name + "<br>" );
			out.println("설정된 세션의 속성 값 [ " + i + " ] : " + value + "<br>" );
		}
	%>
</body>
</html>
