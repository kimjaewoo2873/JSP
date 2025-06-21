<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import = "java.util.Date, java.lang.Math" %>
<html>
<head><title>Directives Tag</title></head>
<body>
	현재 날짜 : <% out.println(new Date().toLocaleString() + "<br>"); %>
	<!-- toLocaleString()는 한글로 출력 -->
	5의 제곱 : <% out.println(Math.pow(5,2)); %>
	<!-- 절대값: Math.abs(double);
		 큰 값: Math.max(int a, int b);
		 작은값: Math.min(int a, int b);
		 제곱근: Math.sqrt(double a);
		 랜덤값: Math.random(); 0.0~1.0미만
		 원주율: Math.PI
	-->>
</body>
</html>