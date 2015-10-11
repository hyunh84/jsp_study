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

	<jsp:useBean id="pp1" class="dto.People" />
	<%-- id : 레퍼런스 역할, class : 대상 클래스 --%>
	
	<jsp:setProperty property="name" name="pp1" value="둘리" />
	<jsp:setProperty property="age" name="pp1" value="10" />
	<%--property : 멤버변수, value : 저장하려는 값  --%>
	
	이름 : <jsp:getProperty property="name" name="pp1" />,
	나이 : <jsp:getProperty property="age" name="pp1"/>
	
	
	
	
	
	
	<form action="/Day08/j01_useBean02.jsp" method="post">
		이름 : <input type="text" name="name" />
		<br />
		<br />
		나이 : <input type="text" name="age" />
		<br />
		<br />
		<input type="submit" value="전송하기" />	
	</form>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


</body>
</html>