package dao;

import java.sql.*;
import dto.Member;

//	DAO : Data Access Object
//	- DB 접속 및 관련 데이터의 처리를 담당하는 객체

public class J02_MemberDao {

	String driver = "oracle.jdbc.driver.OracleDriver"; 
	String url = "jdbc:oracle:thin:@192.168.33.106:1521:xe";
	String user = "para";
	String password = "para";
	
	
	public int regMember(Member regDto) {
		
		int res = 0;
		
		try {

//	 		1. DB 접속
//			#.1 Driver Load
			Class.forName(driver);
			System.out.println("#.1 DriverLoad Comp");	
			
//			#.2 DBConnection
			Connection conn = 
					DriverManager.getConnection(url, user, password);
			System.out.println("#.2 DBConnection Comp");
			
//			#.3 SQL(insert) && executeUpdate
			String sql = "insert into loginfo values(?, ?, ?, ?, sysdate, ?)";
			
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, regDto.getId());
			ps.setString(2, regDto.getPw());
			ps.setString(3, regDto.getName());
			ps.setInt(4, regDto.getAge());
			ps.setString(5, regDto.getGender());
			
			res = ps.executeUpdate();
			
			ps.close();
			conn.close();
			
//			2. 결과 제공
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return res;
	}

	
	
	
	
	
	
}



























