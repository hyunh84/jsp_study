<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h2>스크립트릿과 표현식</h2>
	<hr>
	
	<% //스크립트릿 영역
		String name = "둘리";
		int age = (int)(Math.random() * 100);
		
		if(age > 19) {
	%>
		
		<%= name %>는 <%= age %> 청소년 할인 대상이 아닙니다.
		
	<% //스크립트릿 영역
		}else{
	%>
	
		<%= name %>는 <%= age %>청소년 할인 대상입니다.
		
	<% //스크립트릿 영역
		}
	%>



</body>
</html>