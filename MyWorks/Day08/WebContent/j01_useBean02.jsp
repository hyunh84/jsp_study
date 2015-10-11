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

	<%
		request.setCharacterEncoding("utf-8");
	%>

	<jsp:useBean id="peo" class="dto.People" />
	<%-- id : 레퍼런스 역할, class : 대상 클래스 --%>
	
	<%-- request 정보 저장 방법1 --%>
	
	<jsp:setProperty property="name" name="peo" />
	<jsp:setProperty property="age" name="peo" />
	<%--property : 멤버변수, value : 저장하려는 값  --%>
	
	peo 정보보기 방법1<br />
	이름 : <jsp:getProperty property="name" name="peo" />,
	나이 : <jsp:getProperty property="age" name="peo"/>
	
	<br /><br />
	
	<%-- request 정보 저장 방법2 --%>
	<jsp:useBean id="peo2" class="dto.People" />
	<jsp:setProperty property="*" name="peo2" />
	
	peo 정보보기 방법2<br />
	이름 : <jsp:getProperty property="name" name="peo2" />,
	나이 : <jsp:getProperty property="age" name="peo2"/>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


</body>
</html>