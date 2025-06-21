<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import ="java.sql.*" %>
<html>
<head><title>Database</title></head>
<body>
	<%@ include file = "dbconn.jsp" %>
	<%
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		
		PreparedStatement pstmt = null;
		
		try{
			String sql = "insert into member(id,passwd,name) values(?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			pstmt.setString(3, name);
			pstmt.executeUpdate();
			out.println("Member 테이블 삽입이 성공했습니다.");
		} catch(SQLException ex){
			out.println("Member 테이블 삽입이 실패했습니다.");
			out.println("SQLException: " + ex.getMessage());
		} finally {
			if(pstmt != null)
				pstmt.close();
			if(conn != null)
				conn.close();
		}
	%>
</body>
</html>