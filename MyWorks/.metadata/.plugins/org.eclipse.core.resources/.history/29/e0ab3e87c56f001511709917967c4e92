<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.FileDto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style type="text/css">
	* {margin:0; padding:0;}
	a {color:#555; text-decoration:none;}
	a:hover {color:blue; text-decoration:underline;}
	h2 {padding:20px 10px;}
	table {border-collapse:collapse; }
	table th {padding:5px; border:1px solid #777;}
	table td {padding:5px; border:1px solid #777;}
</style>
</head>
<body>
	<h2>FILE  삭제</h2>
	<hr />
	
	<%
//		1. 서버에 저장된 실제 파일 삭제(DB의 addr)
//		2. DB에 저장된 파일 관련 정보 삭제

		String msg = null;
	
		try{
			
			//#1. Driver Load
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("1. Driver Load Comp");
			
			//#2. DB Connection
			String url = "jdbc:oracle:thin:@192.168.33.121:1521:xe";
			String user = "para";
			String password = "para";
			Connection conn = DriverManager.getConnection(url, user, password);
			System.out.println("2. DB Connection Comp");
			
			
			
			//#3. SQL && executeQuery
			//#3-1 addr 읽어오기 : SQL(select) && executeQuery
			String rcvNum = request.getParameter("num");
			int num = Integer.parseInt(rcvNum);
			
			String sql = "select * from fileinfo where num=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, num);
			
			ResultSet rs = ps.executeQuery();
			
			String addr = null;//서버 실제 경로에 있는 파일 삭제 용도
			String orgName = null;//이클립스에 있는 파일 삭제 용도
			if(rs.next()) {
				addr = rs.getString("addr");				
				orgName = rs.getString("orgname");
			}
			
			File delFile = new File(addr);
			delFile.delete();
			//실제 경로를 이용하여 서버에 저장된 파일 삭제하기
			
			delFile = new File("C:\\hyunh\\MyWorks\\Day07\\WebContent\\upfile\\" + orgName);
			delFile.delete();
			System.out.println("C:\\hyunh\\MyWorks\\Day07\\WebContent\\upfile\\" + orgName);
			//이클립스에 있는 파일 삭제
			
			
			//#3-2 DB 레코드 삭제 : SQL(delete) && executeUpdate
			sql = "delete from fileinfo where num=?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1,num);
			
			int res = ps.executeUpdate();
			
			if(res > 0) {
				msg = "삭제 완료";
			}else{
				msg = "삭제 실패";
			}
			
			
			rs.close();
			ps.close();
			conn.close();
			
		}catch(Exception e){e.printStackTrace();}
	
	
	
	
	%>
	
	<script>
		alert("<%=msg %>");
		location.href = "/Day07/j06_file03.jsp";
	</script>
	
	
</body>
</html>