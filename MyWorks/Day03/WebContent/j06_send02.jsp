<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

<style type="text/css">
	* {margin:0; padding:0;}
	table {border-collapse:collapse; }
	table th {padding:5px; border:1px solid #777;}
	table td {padding:5px; border:1px solid #777;}
</style>
<script type="text/javascript" src="/Day03/js/jquery-1.11.3.min.js"></script>

</head>
<body>

	<h2>페이지 2 : sendRedirect방식</h2>
	<hr>
	
	<%--
		
	 --%>
	 
	 <% 
		response.sendRedirect("/Day03/j06_send04.jsp");
	 %>
	
	 
</body>
</html>