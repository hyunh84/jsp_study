<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="dto.j04_people" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

<style type="text/css">
	* {margin:0; padding:0;}
	h2 {padding:20px 10px;}
	table {border-collapse:collapse; }
	table th {padding:5px; border:1px solid #777;}
	table td {padding:5px; border:1px solid #777;}
</style>
<script type="text/javascript" src="/Day04/js/jquery-1.11.3.min.js"></script>

</head>
<body>

	<h2>DB - 인사정보 리스트</h2>
	<hr>
	
	<%--
		
	 --%>
	 
	 <%
	 	ArrayList<j04_people> listc = new ArrayList();
	 
	 try{
			listc.add(new j04_people(1, "둘리", 10));
			listc.add(new j04_people(2, "도우너", 25));
			listc.add(new j04_people(3, "또치", 19));
	 		
	 	}catch(Exception e) {
	 		e.printStackTrace();
	 	}
	 
	 
	 %>
	 
	 <a href="/Day04/j04_peo02.jsp" style="display:block; padding:10px; ">인사정보 입력</a>
	 <form action="" method="post">
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
					
					<%
						for(j04_people each : listc) {
					%>
						<tr>
							<td><%=each.getNum() %></td>
							<td><%=each.getName() %></td>
						</tr>
					<%
						}
					%>
				</tbody>
			</table>
		</div>
	</form>
		
	
	

</body>
</html>