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

	<h2>page 2 : forward 명령방식 - 1</h2>
	<hr>
	
	<%--
		- request 객체로 부터 화면 이동과 관련된 RequestDispatcher객체를 제공받음
		- 제공받은 객체를 이용하여 forward로 이동할 때에는 forward메소드 안에 request와 response를 넣어준다.
		- url에 도착페이지 주소가 노출되지 않고, 중간 페이지의 주소가 노출된다.
		- 이동하려는 페이지 입력시 자동으로 프로젝트의 이름이 적용되기 때문에 절대주로 표기 시 프로젝트의 이름을 제거한 url입력한다.
	 --%>
	 
	 <% 
	 	System.out.println("페이지 02 도착 : forward 방식 1");
	 	RequestDispatcher rd = request.getRequestDispatcher("/j03_forward03.jsp");

		rd.forward(request, response);
	 %>
	 	
	

</body>
</html>