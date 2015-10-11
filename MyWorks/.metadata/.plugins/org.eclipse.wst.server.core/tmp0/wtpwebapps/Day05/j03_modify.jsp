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
	
	%>
	<form action="/Day05/j04_dbmodify.jsp" method="post">
		<div style="width:500px; margin:50px auto 0;">
			<table style="width:100%;">
				<colgroup>
					<col style="width:30%;" />
					<col style="width:70%;" />
				</colgroup>
				<tbody>
					<tr>
						<th>번호</th>
						<td><input type="text" name="num" value="<%=request.getParameter("num") %>" readonly /></td>
					</tr>
					<tr>
						<th>이름</th>
						<td><input type="text" name="name" /></td>
					</tr>
					<tr>
						<th>나이</th>
						<td><input type="text" name="age" /></td>
					</tr>
				</tbody>
			</table>
			<div>
			<button type="submit">수정하기</button>
			<button type="reset">다시쓰기</button>
		</div>
		</div>
	</form>
	

	
	<%--
			
			
	 --%>
	
		
	
	

</body>
</html>