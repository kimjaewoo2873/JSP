<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*" %>
<html>
<head><title>Database</title></head>
<body>
	<%@ include file = "dbconn.jsp" %>
	<%
		request.setCharacterEncoding("utf-8");
		
		String before = request.getParameter("before");
		String after = request.getParameter("after");
		
		Statement stmt = null;
		ResultSet rs = null;
		
		try{
			stmt = conn.createStatement();
			String sql = "update student set depart = '" + after + "' where depart = '" + before + "'";
			stmt.executeUpdate(sql);
			out.println("성공");
		} catch (SQLException ex){
			out.println(ex.getMessage());
		} finally {
			if(stmt != null)
				stmt.close();
			if(conn != null)
				conn.close();
		}
	%>
</body>
</html>
