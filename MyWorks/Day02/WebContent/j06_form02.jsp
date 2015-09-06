<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>



	<h2>&lt;form&gt; 의 post방식 02</h2>
	<hr>
	
	<%--
		
		
	 --%>
	
	<%
		
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");	
	
	%>
	
	
		<p>
			아이디 : <%= id %>
		</p>
		<p>
			비밀번호 : <%= pw %>
		</p>


</body>
</html>