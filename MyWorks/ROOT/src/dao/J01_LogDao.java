package dao;

import java.sql.*;

public class J01_LogDao {

	String driver = "oracle.jdbc.driver.OracleDriver"; 
	String url = "jdbc:oracle:thin:@192.168.33.106:1521:xe";
	String user = "para";
	String password = "para";
	
	public int login(String tid, String tpw) {
		
		int res = -1;
		
		try {
			
//			1. DB����
			
//			#.1 Driver Load
			Class.forName(driver);
			System.out.println("#.1 DriverLoad Comp");
			
//			#.2 DBConnection
			Connection conn = DriverManager.getConnection(url, user, password);
			System.out.println("#.2 DB Connection Comp");

//			#.3 SQL && execute
			String sql = "select * from loginfo where id=?";
			
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, tid);
			
			ResultSet rs = ps.executeQuery();
			
//			2. id && pw Ȯ��
//			3. ��� ����
			if(rs.next()) {
				
				String pw = rs.getString("pw");
				
				if(tpw.equals(pw)) {
					res = 1;	// �α��� ����	
					
				} else {
					res = 2;	// ��й�ȣ ����ġ
				}
				
			} else {
				res = 0;		// �������� �ʴ� ���̵�
			}

			rs.close();
			ps.close();
			conn.close();
			
		} catch(Exception e) {
			e.printStackTrace();
		}

		return res;
	}
	
	
	
	
	
}

















