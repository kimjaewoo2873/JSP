<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<html>
<head>
<title>File Upload</title>
</head>
<body>
<!--  본인이 작성하라 -->
<%
		String realPath = application.getRealPath("/resources/images");

	    MultipartRequest multi = new MultipartRequest(request, realPath, 5*1024*1024, "utf-8", new DefaultFileRenamePolicy());
		
    	Enumeration file = multi.getFileNames();
    	while(file.hasMoreElements()){
    		String name = (String) file.nextElement();

    		String original = multi.getOriginalFileName(name);
    		String filename = multi.getFilesystemName(name);
    		out.println("실제 파일 이름 : " + original + "<br>");
    		out.println("저장 파일 이름 : " + filename + "<br>");
    %>
   	<img src="<%= request.getContextPath() %>/resources/images/<%= filename %>" alt="업로드된 이미지" width="220"/>
   	<%
    	out.println("<br><br>---------------------------------------------------------------<br>");
    	}
   	%>
</body>
