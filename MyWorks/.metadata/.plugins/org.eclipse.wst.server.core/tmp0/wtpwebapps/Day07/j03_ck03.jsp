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
	<h2>쿠키삭제</h2>
	<hr />
	
	<%
		Cookie newCk = new Cookie("ck2", "abcd");
		//존재하는 쿠키와 같은 이름으로 쿠키를 만들면 기존의 내용에 대해서 덮어쓰기 하는 효과가 있음
	
	
		newCk.setMaxAge(0);
		
		
	
	%>
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>