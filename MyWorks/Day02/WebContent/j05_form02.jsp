<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>



	<h2>&lt;form&gt; 이용하기 화면이동 정보전송 02</h2>
	<hr>
	
	<%--
	
		문제 : 파라미터 값을 출력하세요
		
	 --%>
	 
	<%
		String name= request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
	%>
	
	<p>
		이름 : <%= name %>
	</p>
	<p>
		나이 : <%= age %> 
	</p>
		

	 


</body>
</html>