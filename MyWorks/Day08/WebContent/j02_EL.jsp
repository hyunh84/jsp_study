<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
</head>
<body>
	
	<%--
		EL : Expression Language tag
		
		- 형식 : ${}
		- 값의 출력 및 연산 가능
		- request와 session의 setAttribute한 값을 자동으로 호출
		(우선순위는 request가 높다.)
	
	
	 --%>
	
	<%
		int n = 5;
	%>
	
	n = ${n} <br />
	
	<%
		request.setAttribute("a", "1224");
		session.setAttribute("b", "가나다라");
		
		request.setAttribute("c", "request의 c");
		session.setAttribute("c", "session의 c");
	%>
	
		request의 a = ${a}<br />
		request의 b = ${b}
		
		<br /><br />
		
		c의 값 확인 c = ${c}
		
		<br /><br />
		영역표현 : ${sessionScope.c}<br />
		영역표현 : ${requestScope.c}
		
		<br /><br />
	
	<%
		People peo1 = new People();
		peo1.setName("둘리");
		peo1.setAge(10);
		request.setAttribute("peo1", peo1);
	%>

	이름 : ${peo1.name},<br />
	나이 : ${peo1.age}
	
	<br /><br />
	
	<jsp:useBean id="peo2" class="dto.People" />	
	<jsp:setProperty property="name" name="peo2" value="둘리" />
	<jsp:setProperty property="age" name="peo2" value="10" />
	이름 : ${peo1.name},<br />
	나이 : ${peo1.age}
	
	
	
	
	
	
	
	


</body>
</html>