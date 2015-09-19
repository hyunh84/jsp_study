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
	
	#wrap {width:800px; margin:0 auto;border:1px solid #555;}
	#header {height:100px;border-bottom:1px solid #555;}
	#container {overflow:hidden;}
	#left {float:left; width:299px;height:400px;border-right:1px solid #555;}
	#content {float:right; width:500px;height:400px;}
	#footer {height:100px;border-top:1px solid #555;}
	
</style>
<script type="text/javascript" src="/Day04/js/jquery-1.11.3.min.js"></script>

</head>
<body>

	<%
		String nowCenter = "/" + (String)request.getAttribute("center") + ".jsp";
	%>

	<h2>TEMPLATE</h2>
	<div id="wrap">
		<div id="header"><jsp:include page="j01_top.jsp" /></div>
		<div id="container">
			<div id="left"><jsp:include page="j02_left.jsp" /></div>
			<dv id="content"><jsp:include page="<%=nowCenter %>" /></dv>
		</div>
		<div id="footer"><jsp:include page="j04_bottom.jsp" /></div>		
	</div>
	

</body>
</html>