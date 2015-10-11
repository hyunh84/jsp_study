<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
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
<script type="text/javascript" src="/Day04/js/jquery-1.11.3.min.js"></script>

</head>
<body>

	<h2 style="text-align:center;">PAGE : CC</h2>
	<hr>
	
	<%-- 
		페이지 구성 방법
		
			2. include page
				- 동적 include
				- 각 각의 출력 결과 화면을 합치는 방식
				- 절대경로 표현의 기준 위치는 WebContent
			
	 --%>

	<div style="width:500px; margin:50px auto 0;">
		<table style="width:100%;">
			<colgroup>
				<col style="width:30%;" />
				<col style="width:70%;" />
			</colgroup>
			<tbody>
				<tr>
					<td>
						<jsp:include page="/j07_includepage01.jsp"  />
					</td>
					<td>
						<jsp:include page="/j07_includepage02.jsp" />
					</td>
				</tr>
<!-- 				<tr> -->
<%-- 					<td colspan="2"><%=msg01 %></td> --%>
<!-- 				</tr> -->
			</tbody>
		</table>
	</div>
	
	

</body>
</html>