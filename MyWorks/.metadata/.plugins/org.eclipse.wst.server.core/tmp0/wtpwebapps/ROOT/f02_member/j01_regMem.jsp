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
<script type="text/javascript" src="/Day04/js/jquery-1.11.3.min.js"></script>

</head>
<body>

	<h2>회원가입 Form 페이지</h2>
	<hr>
	
	
	
	<form action="/index.jsp?center=f02_member/j02_regDBConn" method="post">
		<div style="width:500px; margin:50px auto 0;">
			<table style="width:100%;">
				<colgroup>
					<col style="width:30%;" />
					<col style="width:70%;" />
				</colgroup>
				<tbody>
					<tr>
						<td>아이디</td>
						<td>
							<input type="text" name="id"/>
						</td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td>
							<input type="password" name="pw"/>
						</td>
					</tr>
					<tr>
						<td>이름</td>
						<td>
							<input type="text" name="name"/>
						</td>
					</tr>
					<tr>
						<td>나이</td>
						<td>
							<input type="text" name="age"/>
						</td>
					</tr>
					<tr>
						<td>성별</td>
						<td>
							<input type="radio" name="gender" 
											value="man" checked="checked"/>남자
							<input type="radio" name="gender" value="weman"/>여자
						</td>
					</tr>
				</tbody>
			</table>
			<div>
				<input type="submit" value="회원가입"/>
				<input type="reset" value="다시쓰기"/>				
			</div>
		</div>
		
	</form>
	



</body>
</html>













