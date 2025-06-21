import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;

public class Exam2 {
  //<힌트> JSPBook/src/main/webapp/ch16/dbconn.jsp
  private static Connection makeConnection() {
    Connection conn = null;
    String url = "jdbc:mysql://localhost/ExamDB";
    String id = "root";
    String password = "1234";
    try {
      Class.forName("com.mysql.cj.jdbc.Driver");
      //System.out.println("드라이버 적재 성공");
      conn = DriverManager.getConnection(url, id, password);
      //System.out.println("데이터베이스 연결 성공");
    } 
    catch (ClassNotFoundException e) {
      System.out.println("드라이버를 찾을 수 없습니다.");
    }
    catch (SQLException e) {
      System.out.println("연결에 실패하였습니다.");
    }
    return conn;
  }

  //<힌트없음>
  private static void select(Connection conn,String id) {
    // 본인이 작성하라
	  PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try {
				String sql = "select * from member;";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
			
				while(rs.next()) {
					String find_id = rs.getString("id");
					String depart = rs.getString("depart");
		
					
					if(find_id.equals(id)) {
						System.out.println();
						System.out.println("-------------------");
						System.out.println("id depart");
						System.out.printf("%s %s\n", find_id, depart);
						System.out.println("-------------------");
					}
				} 
			} catch(SQLException ex) {
				System.out.println(ex.getMessage());
			} finally {
				if(pstmt != null)
					try {
						pstmt.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}	
			}

  }

  public static void main(String arg[]) {
    Connection conn = makeConnection();
    select(conn,"1id");
    select(conn,"2id");
    System.out.println("프로그램 종료");
  }
}
