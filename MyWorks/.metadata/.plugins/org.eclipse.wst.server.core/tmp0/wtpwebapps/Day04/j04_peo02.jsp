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
	h2 {padding:20px 10px;}
	table {border-collapse:collapse; }
	table th {padding:5px; border:1px solid #777;}
	table td {padding:5px; border:1px solid #777;}
</style>
<script type="text/javascript" src="/Day04/js/jquery-1.11.3.min.js"></script>

</head>
<body>

	<h2>DB - 인사정보 입력 테이블</h2>
	<hr>
	
	<%--
		
	 --%>
	 
	 <%
	 	
	 %>
	 <form action="/Day04/j04_peo022.jsp" method="post">
		<div style="width:500px; margin:50px auto 0;">
			<table style="width:100%;">
				<colgroup>
					<col style="width:30%;" />
					<col style="width:70%;" />
				</colgroup>
				<tbody>
					<tr>
						<td>이름</td>
						<td><input type="text" name="name" style="width:100px;" /></td>
					</tr>
					<tr>
						<td>나이</td>
						<td><input type="text" name="age" style="width:100px;" /></td>
					</tr>
				</tbody>
			</table>
			<button type="submit" style="width:100%; height:30px; margin:10px 0 0;">확인</button>
		</div>
	</form>
	 
	
		
	
	

</body>
</html>