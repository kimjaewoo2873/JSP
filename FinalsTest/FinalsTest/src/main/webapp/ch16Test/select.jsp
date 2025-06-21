<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import = "java.sql.*" %>
<html>
<head><title>Database</title></head>
<body>
	<%@ include file = "dbconn.jsp" %>
	<table width="550" border="1">
		<tr>
			<th>학번</th>
			<th>학과</th>
			<th>이름</th>
			<th>주소</th>
			<th>연락처</th>
		</tr>
	<%
		request.setCharacterEncoding("utf-8");
		
		Statement stmt = null;
		ResultSet rs = null;
		
		try{
			stmt = conn.createStatement();
			String sql = "select * from student";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				String rNum = rs.getString("num");
				String rDepart = rs.getString("depart");
				String rName = rs.getString("name");
				String rAddress = rs.getString("address");
				String rPhone = rs.getString("phone");
	%>
		<tr>
		<td><%= rNum %></td>
		<td><%= rDepart %></td>
		<td><%= rName %></td>
		<td><%= rAddress %></td>
		<td><%= rPhone %></td>
	<%
			}
		} catch (SQLException ex){
			out.println(ex.getMessage());
		} finally {
			if(stmt != null){
				stmt.close();
			}
			if(conn != null){
				conn.close();
			}
		}
	%>
	</table>
</body>
</html>