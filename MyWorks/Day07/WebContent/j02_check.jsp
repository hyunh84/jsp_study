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
	<h2>쿠키 확인</h2>
	<hr />
	
	<%
		Cookie[] cookies = request.getCookies();
	
		if(cookies != null) {
			
			for(Cookie each : cookies) {
				
				String name = each.getName();
				String value = each.getValue();
	%>
				전송된 쿠키 이름 : <%=name %>
				전송된 쿠키 값 : <%=value %><br />
	<%				
			}
			
		}else{		
	%>
		전송된 쿠키가 없습니다.
	<%
		}
	%>
	
	
	

</body>
</html>