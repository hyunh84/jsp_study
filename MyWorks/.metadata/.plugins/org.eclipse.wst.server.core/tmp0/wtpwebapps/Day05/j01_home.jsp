<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.ArrayList" %>
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

	<h2>인사정보리스트</h2>
	<hr>
	
	<%
	
		ArrayList<People> peoArray= new ArrayList();
	
		try{
//			1. Driver Load
			Class.forName("oracle.jdbc.driver.OracleDriver");
	 		System.out.println("#1. Driver Load End");
			
			
//	 		2. Connection
			String url = "jdbc:oracle:thin:@192.168.33.102:1521:xe";
			String user = "para";
			String password = "para";
			
			Connection conn = DriverManager.getConnection(url, user, password);
			System.out.println("2. Connection Comp");
			
//	 		3. SQL && execute
			String sql = "select * from peoinfo order by NUM desc";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				int num = rs.getInt("NUM");
				String name = rs.getString("NAME");
				int age = rs.getInt("AGE");
				
				Date regdate = rs.getDate("REGDATE");
				
				System.out.println("num = " + num + ", Name = " + name + ",  age = " + age + ",  regDate=" + regdate);
				
				People peo = new People();
				peo.setNum(num);
				peo.setName(name);
				peo.setAge(age);
				peo.setRegdate(regdate);
				
				peoArray.add(peo);

				
			}
			
// 			4. close
			rs.close();
			ps.close();
			conn.close();

		
						
		}catch(Exception e){
			e.printStackTrace();
		}
	%>

	<div style="width:500px; margin:50px auto 0;">
		<table style="width:100%;">
			<colgroup>
				<col style="width:30%;" />
				<col style="width:70%;" />
			</colgroup>
			<thead>
				<tr>
					<th>번호</th>
					<th>이름</th>
				</tr>
			</thead>
			<tbody>
			<%for(People each : peoArray) {%>
				<tr>
					<td><%=each.getNum() %></td>
					<td>
						<a href="/Day05/j02_detail.jsp?num=<%=each.getNum()%>"><%=each.getName() %></a>
					</td>
				</tr>
			<%}%>
			</tbody>
		</table>
	</div>

	
	<%--
			
			
	 --%>
	
		
	
	

</body>
</html>