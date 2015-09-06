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

</head>
<body>

	<h2>문제 : 학생 성적 정보 프로그램</h2>
	<hr>
	
	<%--
		
		1. 다음의 학색정보가 입력되도록 작성
		
			- 이름, 국어, 영어, 수학점수		
		
		2. 02page로 전송
		
			- form, post, table 사용
			
		3. 02페이지 출력
			- 전송된 정보를 바탕으로 총점, 평균을 산출 
			- 전체정보 (입력정보 + 총점 + 평균 ) 출력

	 --%>
	<form action="j08_Quize02.jsp" method="post">
		<div style="width:500px; margin:50px auto 0;">
			<table style="width:100%;">
				<colgroup>
					<col style="width:30%;" />
					<col style="width:70%;" />
				</colgroup>
				<tbody>
					<tr>
						<th>이름</th>
						<td><input type="text" name="name" /></td>
					</tr>
					<tr>
						<th>국어 점수</th>
						<td><input type="text" name="ko" /></td>
					</tr>
					<tr>
						<th>영어 점수</th>
						<td><input type="text" name="en" /></td>
					</tr>
					<tr>
						<th>수학 점수</th>
						<td><input type="text" name="math" /></td>
					</tr>
				</tbody>
			</table>
			<button type="submit" style="width:100%; margin:10px 0 0;">확인</button>
		</div>
	</form>
		
	
	

</body>
</html>