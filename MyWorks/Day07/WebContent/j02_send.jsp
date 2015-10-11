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
	<h2>클라이언트에 쿠키 전송</h2>
	<hr />
	
	<%
		Cookie cookie1 = new Cookie("cooki01", "101010");
		Cookie cookie2 = new Cookie("cooki02", "202020");
		Cookie cookie3 = new Cookie("cooki03", "303030");
		
		
		response.addCookie(cookie1);
		response.addCookie(cookie2);
		response.addCookie(cookie3);
	%>
	
	<a href="/Day07/j02_check.jsp">서버의 화면에 접속할 때, 클라이언트가 보내주는 쿠키를 확인하기</a>
	
	

</body>
</html>