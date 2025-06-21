<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import ="java.sql.*" %>
<html>
<head>
<title>Database</title>
</head>
<body>
	<%@ include file = "dbconn.jsp" %>
	<%
		request.setCharacterEncoding("utf-8");
		String num = request.getParameter("num");
		String depart = request.getParameter("depart");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		
		Statement stmt = null;
		
		try{
			stmt = conn.createStatement();
			String sql = "insert into student(num, depart, name, address, phone) values('" + num + "','" + depart + "','" + name + "','" + address + "','" + phone + "')";
			stmt.executeUpdate(sql);
			out.println("Student 테이블에 삽입했습니다.");
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