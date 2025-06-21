<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import = "java.sql.*" %>
<html>
<head><title>Database</title></head>
<body>
	<%@ include file = "dbconn.jsp" %>
	<%
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		ResultSet rs = null;
		Statement stmt = null;
		
		try{
			String sql = "select id, passwd from member where id ='" + id + "'";
			stmt = conn.createStatement(); // Statement 객체 생성, conn으로 데이터베이스에 연결하는것
			rs = stmt.executeQuery(sql); // 질의문 실행
			
			if(rs.next()){
				String rId = rs.getString("id");
				String rPasswd = rs.getString("passwd");
				
				if(id.equals(rId) && pwd.equals(rPasswd)){
					sql = "delete from member where id = '" + id + "' and passwd = '" + pwd + "'";
					stmt = conn.createStatement();
					stmt.executeUpdate(sql);
					out.println("memeber 테이블에서 데이터를 삭제했습니다.");
				} else 
					out.println("일치하는 비밀번호가 없습니다.");
			} else
				out.println("memeber 테이블에 일치하는 아이디가 없습니다.");
		} catch(SQLException ex){
			out.println("SQLException: " + ex.getMessage());
		} finally {
			if(rs != null)
				rs.close();
			if(stmt != null)
				stmt.close();
			if(conn != null)
				conn.close();
		}
	%>
</body>
</html>