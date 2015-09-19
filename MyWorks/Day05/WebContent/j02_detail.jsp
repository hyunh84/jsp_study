<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="dto.People" %>
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

	<h2>상세내용보기</h2>
	<hr>
	
	<%
		
		People peo = new People();
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
			
			String rcv = request.getParameter("num");
			int num = Integer.parseInt(rcv);
			
// 			3. SQL && executeQuery
			String sql = "select * from peoinfo where num=?";

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, num);
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				peo.setNum(rs.getInt("NUM"));
				peo.setName(rs.getString("NAME"));
				peo.setAge(rs.getInt("AGE"));
				peo.setRegdate(rs.getDate("REGDATE"));
			}

// 			4. close
			rs.close();
			ps.close();
			conn.close();


			
		}catch(Exception e) {
			e.printStackTrace();
		}
	%>

	<div style="width:500px; margin:50px auto 0;">
		<table style="width:100%;">
			<colgroup>
				<col style="width:30%;" />
				<col style="width:70%;" />
			</colgroup>
			<tbody>
				<tr>
					<th>번호</th>
					<td><%=peo.getNum() %></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><%=peo.getName() %></td>
				</tr>
				<tr>
					<th>나이</th>
					<td><%=peo.getAge() %></td>
				</tr>
				<tr>
					<th>등록일</th>
					<td><%=peo.getRegdate() %></td>
				</tr>
			</tbody>
		</table>
		<div>
			<a href="/Day05/j03_modify.jsp?num=<%=peo.getNum() %>">수정</a>
			<a href="/Day05/j05_dbdel.jsp?num=<%=peo.getNum() %>">삭제</a>
		</div>
	</div>

	
	<%--
			
			
	 --%>
	
		
	
	

</body>
</html>