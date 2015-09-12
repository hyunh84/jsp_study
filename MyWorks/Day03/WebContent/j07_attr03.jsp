<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="dto.j08_people" %>
<%@ page import="java.util.ArrayList" %>
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

	<h2>페이지 2</h2>
	<hr>
	
	<%--
		프로그래머가 페이지 이동 시, 데이터를 전송하려는 경우 request객체의 setAttribute를 이용한다.
		키 - 값의 구조가 가지고 있으며, 키는 String, 값은 object형태로 이용된다.
		도착한 페이지에서는 키를 이용하여 값을 추출하고, 제공되는 값의 형태는 object이다.
		attribute와 forward를 이용하여 정보를 전달할 때 다음페이지 까지만 데이터가 도착하며, 그이후는 forward를 사용하더라도 자동으로 전송되진 않는다.
	 --%>
	 
	 <% 
		Object rcv = request.getAttribute("data");
	 	String data = (String)rcv;
	 	
	 	Object rcv2 = request.getAttribute("pp1");
	 	j08_people pp1 = (j08_people)rcv2;
	 	
	 	request.getAttribute("li");
	 	Object rcv3 = request.getAttribute("li");
	 	ArrayList<j08_people> listc = (ArrayList<j08_people>)rcv3;
	 %>
	 
	 전송된 데이터 : <%= data %><br /><br />
	 
	 전송된 객체 데이터 : 이름 = <%= pp1.getName() %>, 나이 = <%= pp1.getAge() %><br /><br />
	 
	 <%
	 	for(j08_people each : listc) {
	 %>
	 
	 		컬렉션 정보 : 객체이름<%= each.getName() %>, 객체나이<%= each.getAge() %><br /><br />
	 <%} %>
</body>
</html>