<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

	<%
		String id = (String)session.getAttribute("nowLog");
	
		session.invalidate();
		
		String msg = id + " 회원님 안녕히 가십시오";
	%>

	<script type="text/javascript">
		alert("<%= msg %>");
		location.href="/index.jsp";
	</script>



</body>
</html>













