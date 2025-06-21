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
	<%
		request.setCharacterEncoding("utf-8");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			String sql = "select * from student";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
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
			if(pstmt != null)
				pstmt.close();
			if(conn != null)
				conn.close();
		}
	%>
	</table>
</body>
</html>