<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import = "java.sql.*" %>
<html>
<head><title>Database</title></head>
<body>
	<%@ include file = "dbconn.jsp" %>
	<%
		request.setCharacterEncoding("utf-8");
		
		String department = request.getParameter("department");
		
		Statement stmt = null;
		
		
		try{
			stmt = conn.createStatement();
			String sql = "delete from student where depart = '" + department + "'";
			stmt.executeUpdate(sql);
			
			out.println("Student 테이블을 삭제했습니다.");
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