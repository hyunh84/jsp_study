<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>



	<h2>&lt;form&gt; 이용하기</h2>
	<hr>
	
	<%--
		
	 --%>
	 
	  <%
	 	String data;

	 	String rvc = request.getParameter("data");
	 	int n = Integer.parseInt(rvc);
	 	n +=100;
	 	//age = request.getPatameter("age");
	 	//제공되는 데이터는 형태가 무조건 String 이므로 목적에 맞는 형변환이 필요하다.
	 	 	
	 %>

	 data : <%= rvc %><br /><br />
	 100 더한값 : <%= n %>


</body>
</html>