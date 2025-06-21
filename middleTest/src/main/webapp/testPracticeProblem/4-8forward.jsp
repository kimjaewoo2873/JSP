<html>
<head><title>Action Tag</title></head>
<body>
	<% String word = request.getParameter("num");
		int num = Integer.parseInt(word);
	
	 for(int i=1;i<10;i++){
			out.println(num + " * " + i + " = " + (num*i) + "<br>");
		}
	%>
	
</body>
</html>