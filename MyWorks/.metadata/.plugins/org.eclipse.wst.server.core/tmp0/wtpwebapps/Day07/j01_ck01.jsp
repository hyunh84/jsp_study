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

	<%--
		쿠키 : 클라이언트측 브라우저 고나련 메모리에 저장되는 임시파일
		서버가 클라이언트에 발송(저장)하며,
		저장된 쿠키는 클라이언트가 서버에 접속할 때마다 자동으로 관련 내용을 서버측에 전송함
		
		이용되는 예 : 로그인시 아이디 기억 / 팝업창 그만보기 / 로그인 유지...
	--%>
	<h2>시작페이지</h2>
	<hr />
	
	<a href="/Day07/j01_ck02.jsp">쿠키 전송 화면으로 가기</a>
	<br />
	<br />
	<a href="/Day07/j01_ck03.jsp">서버의 화면에 접속할 때, 클라이언트가 보내주는 쿠키를 확인하기</a>
	
	

</body>
</html>