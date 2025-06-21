<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import = "java.util.Enumeration" %>
<html>
<head><title>Session</title></head>
<body>
	<h4>---- 세션을 삭제하기 전 ----</h4>
	<%
		String name;
		String value;
		
		session.setAttribute("userID","admin");
		session.setAttribute("userPW","1234");

		Enumeration en = session.getAttributeNames();
		int i = 0;
		
		while(en.hasMoreElements()){
			i++;
			name = (String)en.nextElement();
			value = (String)session.getAttribute(name);
			out.println("설정된 세션 이름 [ " + i + " ] : " + name + "<br>");
			out.println("설정된 세션 값 [ " + i + " ] : " + value + "<br>");
		}
		
		session.removeAttribute("userID");
	%>
	
	<h4>---- 세션을 삭제한 후 ----</h4>
	<%
		en = session.getAttributeNames();
		
		i = 0;
		while(en.hasMoreElements()){
			i++;
			name = en.nextElement().toString();
			value = session.getAttribute(name).toString();
			out.println("설정된 세션 이름 [ " + i + " ] : " + name + "<br>");
			out.println("설정된 세션 값 [ " + i + " ] : " + value + "<br>");
		}
	%>
</body>
</html>