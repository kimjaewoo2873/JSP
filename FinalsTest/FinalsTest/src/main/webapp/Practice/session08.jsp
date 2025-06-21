<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>Session</title></head>
<body>
	<%
		String session_id = session.getId();
		long last_time = session.getLastAccessedTime();
		long start_time = session.getCreationTime();
		long used_time = (last_time - start_time) / 60000;
		
		long elapsed = last_time - start_time;   // 경과 시간 (ms)
     	long minutes = elapsed / 60000;          // 분
	    long seconds = (elapsed % 60000) / 1000; // 초

	    out.println("세션 아이디 : " + session_id + "<br>");
	    out.println("요청 시작 시간 : " + start_time + "<br>");
	    out.println("요청 마지막 시간 : " + last_time + "<br>");
	    out.println("웹 사이트 경과 시간 : " + minutes + "분 " + seconds + "초<br>");
	%>
</body>
</html>