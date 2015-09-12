<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import = "dto.j08_people" %>
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
		- 프로그래머가 페이지 이동 시, 데이터를 전송하려는 경우 request객체의 setAttribute를 이용한다.
		- 키 - 값의 구조가 가지고 있으며, 키는 String, 값은 object형태로 이용된다.
		- 도착한 페이지에서는 키를 이용하여 값을 추출하고, 제공되는 값의 형태는 object이다.
		- attribute와 forward를 이용하여 정보를 전달할 때 다음페이지 까지만 데이터가 도착하며, 그이후는 forward를 사용하더라도 자동으로 전송되진 않는다.
	 --%>
	 
	 <% 
		String data = "전송하고 싶은 데이터";
	 	request.setAttribute("data", data);	 
	 	
	 	j08_people pp1 = new j08_people("둘리1", 10);
	 	request.setAttribute("pp1", pp1);	 
	 	
	 	ArrayList<j08_people> listc = new ArrayList();
	 	listc.add(new j08_people("도우너1", 20));
	 	listc.add(new j08_people("도우너2", 22));
	 	listc.add(new j08_people("도우너3", 23));
	 	listc.add(new j08_people("도우너4", 24));
	 	request.setAttribute("li", listc);	 
	 	
	 			
	 %>
	 <jsp:forward page="/j07_attr03.jsp"></jsp:forward>
	 
</body>
</html>