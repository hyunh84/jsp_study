<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
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
<script type="text/javascript" src="/Day04/js/jquery-1.11.3.min.js"></script>

</head>
<body>

	<h2>수정내용 DB에 UPDATE하는 페이지</h2>
	<hr>
	
	<%
		
		String resMsg = null;
	
		try{
// 			1. Driver Load
			
				Class.forName("oracle.jdbc.driver.OracleDriver");
	 			System.out.println("#1. Driver Load End");
// 			2. Connection

				String url = "jdbc:oracle:thin:@192.168.33.102:1521:xe";
				String user = "para";
				String password = "para";
				
				Connection conn = DriverManager.getConnection(url, user, password);
				System.out.println("2. Connection Comp");


// 			3. SQL(delete) && executeUpdate
				String rcv = request.getParameter("num");
				int num = Integer.parseInt(rcv);
				
				String sql = "delete peoinfo where num=?";
				
				PreparedStatement ps = conn.prepareStatement(sql);
				ps.setInt(1, num);
				
				int res = ps.executeUpdate();
				
				if(res > 0) {
					resMsg = "수정완료";
				}else {
					resMsg = "수정실패";
				}

// 			4. close()
			ps.close();
			conn.close();
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	%>

	<script>
		alert("<%=resMsg %>");
		location.href="/Day05/j01_home.jsp";
	</script>

		
	
	

</body>
</html>