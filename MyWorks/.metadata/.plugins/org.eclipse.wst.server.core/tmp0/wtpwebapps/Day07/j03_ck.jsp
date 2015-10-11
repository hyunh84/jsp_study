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
	<h2>시작페이지</h2>
	<hr />
	
	<%
		//쿠키 설정
		Cookie ck = new Cookie("ck", "abc");
	
		//생존 시간 설정 (시간단위 : 초)
		ck.setMaxAge(10);
		//시간을 0으로 설정하면, 쿠키 삭제와 같은 효과가 발생한다.
		//(쿠키 삭제 명령은 시간을 0으로 설정하는 방법으로 이용)
		
		response.addCookie(ck);
		
		Cookie ck2 = new Cookie("dayCookie", "7day");
		ck2.setMaxAge(7*24*60*60);
		
		response.addCookie(ck2);
	
	%>
	
	<a href="/Day07/j03_ck02.jsp">전송된 쿠키 확인 페이지</a>
	
	<br /><br />
	
	
	<a href="/Day07/j03_ck03.jsp">7일 설정된 쿠키 삭제하기</a>
	
	
	
	
	
	
	
	
	
</body>
</html>