<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.Connection"%>                
<%@ page import="java.sql.DriverManager"%>                
<%@ page import="java.sql.ResultSet"%>                
<%@ page import="java.sql.SQLException"%>                
<%@ page import="java.sql.PreparedStatement"%> 
<html>
<head>
<title>Database SQL</title>
</head>
<body>
<%@ include file="dbconn.jsp" %>				
	<table width="300" border="1">
		<tr>
			<th>아이디</th>
			<th>이름</th>
		</tr>
		<%
			//본인이 작성하라
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try {
				String sql = "select * from member;";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();

				while(rs.next()) {
					String id = rs.getString("id");
					String name = rs.getString("name");
					
		%>
		<tr>
			<td><%=id%></td>
			<td><%=name%></td>
		</tr>
		<%
				}
			} catch (SQLException ex) {
				out.println("Member 테이블 호출이 실패했습니다.<br>");
				out.println("SQLException: " + ex.getMessage());
			} finally {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			}
		%>
	</table>
</body>
</html>
