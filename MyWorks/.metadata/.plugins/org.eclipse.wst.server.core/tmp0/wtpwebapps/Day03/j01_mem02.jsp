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

	<h2>전송데이터 수신</h2>
	<hr>
	
	<%--
		
	 --%>
	 
	 <% 
	 	request.setCharacterEncoding("utf-8");
	 
	 	String name = request.getParameter("name");
	 	String id = request.getParameter("id");
	 	String pw = request.getParameter("pw");
	 	String email1 = request.getParameter("email1");
	 	String email2 = request.getParameter("email2");
	 	String email = email1 + "@" + email2;
	 	String charc = request.getParameter("char");
	 	String[] hobby = request.getParameterValues("hobby");
		String memo = request.getParameter("memo");
	 	
	 
	 %>
	 
	<form action="/Day03/j01_mem02.jsp" method="post">
		<div style="width:500px; margin:50px auto 0;">
			<table style="width:100%;">
				<colgroup>
					<col style="width:30%;" />
					<col style="width:70%;" />
				</colgroup>
				<tbody>
					<tr>
						<td>이름 입력</td>
						<td><%= name %></td>
					</tr>
					<tr>
						<td>아이디 입력</td>
						<td><%= id %></td>
					</tr>
					<tr>
						<td>비밀번호 입력</td>
						<td><%= pw %></td>
					</tr>
					<tr>
						<td>이메일 입력</td>
						<td><%= email %></td>
					</tr>
					<tr>
						<td>특기</td>
						<td><%= charc %></td>
					</tr>
					<tr>
						<td>취미</td>
						<td>
							<%
// 								확장 for문  이용하기
// 								데이터가 많은 대상을 콜론의 오른쪽에 입력,
// 								그중 하나를 선택한 대상을 콜론 왼쪽에 입력
								for(String each : hobby) {
							%>
								<%= each %><br />
							<%						
								}
							%>						
						</td>
					</tr>
					<tr>
						<td>메모</td>
						<td>
							<%-- 
								
							 --%>
							 <%
							 	String newNemo = memo.replaceAll("\n", "<br />");
							 %>
							 <%= newNemo %>
							
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</form>
	
	<script>
		$(document).ready(function() {
			$('select[name = email2]').change(function() {
				console.log($('option:selected', this).val());
				
			});
		});
	</script>
		
	
	

</body>
</html>