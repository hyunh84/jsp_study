<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
	<h2>상위 경로에서 쿠키 생성</h2>
	<hr />
	
	<%
	
		Cookie ck = new Cookie("upCk", "aa");
	
	
		response.addCookie(ck);
			
	
	%>
	
	
	<a href="/Day07/j04_up02.jsp">같은 경로에서 쿠키 확인하기</a>
	
	<br /><br />
	
	<a href="/Day07/dw/j04_dw03.jsp">하위 경로에서 쿠키 확인하기</a>
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>