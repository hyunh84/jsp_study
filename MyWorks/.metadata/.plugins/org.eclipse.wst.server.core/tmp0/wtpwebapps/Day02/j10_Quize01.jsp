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

	<h2>button을 이용한 스크립트 페이지이동</h2>
	<hr>
	
	<%--
	
	 --%>
	<form name="frm" method="post">
		<div style="width:500px; margin:50px auto 0;">
<!-- 			<table style="width:100%;"> -->
<!-- 				<colgroup> -->
<!-- 					<col style="width:30%;" /> -->
<!-- 					<col style="width:70%;" /> -->
<!-- 				</colgroup> -->
<!-- 				<tbody> -->
<!-- 					<tr> -->
<!-- 						<th>이름</th> -->
<!-- 						<td><input type="text" name="name" /></td> -->
<!-- 					</tr> -->
<!-- 					<tr> -->
<!-- 						<th>국어 점수</th> -->
<!-- 						<td><input type="text" name="ko" /></td> -->
<!-- 					</tr> -->
<!-- 					<tr> -->
<!-- 						<th>영어 점수</th> -->
<!-- 						<td><input type="text" name="en" /></td> -->
<!-- 					</tr> -->
<!-- 					<tr> -->
<!-- 						<th>수학 점수</th> -->
<!-- 						<td><input type="text" name="math" /></td> -->
<!-- 					</tr> -->
<!-- 				</tbody> -->
<!-- 			</table> -->

			<p>데이터 : <input type="text" name="data" /></p>

			
			<button type="button" style="width:100%; margin:10px 0 0;" onclick="go02();">02 페이지 가기</button>
			<button type="button" style="width:100%; margin:10px 0 0;" onclick="go03();">03 페이지 가기</button>
			<button type="button" style="width:100%; margin:10px 0 0;" onclick="go04();">04 페이지 가기</button>
		</div>
	</form>
	
	<script type="text/javascript">
		function go02() {
			frm.action = "/Day02/j09_script02.jsp";
			frm.submit();
		}
		function go03() {
			frm.action = "/Day02/j09_script03.jsp";
			frm.submit();
		}
		function go04() {
			frm.action = "/Day02/j09_script04.jsp";
			frm.submit();
		}
	</script>
		
	
	

</body>
</html>