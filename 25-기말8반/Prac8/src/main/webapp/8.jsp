<%@ page contentType="text/html; charset=utf-8"%>
<%-- 본인이 작성하라  --%>
<%@ page import = "java.util.Enumeration" %>
<html>
<head><title>8</title></head>
<body>
	<h3>선택한 과일</h3>
	<%
		String market[] = request.getParameterValues("Market");
		String fruit = "";		
		for(int i=0;i<market.length;i++){
			fruit = market[i];
			if (fruit.equals("Orange")){
				out.println("오렌지 ");
			} else if (fruit.equals("Apple")){
				out.println("사과 ");
			} else {
				out.println("바나나 ");
			}
		}
	%>
</body>
</html>
<%-- 본인이 작성하라 종료 --%>
