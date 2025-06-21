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
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			String sql = "update student set depart = ? where depart = ?"; 
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, after);
			pstmt.setString(2, before);
			pstmt.executeUpdate();
			
			out.println("Student 테이블을 수정헀습니다.");
		} catch (SQLException ex){
			out.println(ex.getMessage());
		} finally {
			if(pstmt != null)
				pstmt.close();
			if(conn != null)
				conn.close();
		}
	%>
</body>
</html>
