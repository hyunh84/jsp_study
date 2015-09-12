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
	table td {padding:10px; text-align:center; border:1px solid #777;}
</style>
</head>
<body>

	<h2>&lt;table&gt;</h2>
	<hr>
	
	<%--
		tr : 한줄을 의미
		td : 한칸을 의미
	 --%>
	
	<table style="width:500px; margin:50px auto 0;">
		<colgroup>
			<col style="width:20%;" />
			<col style="width:60%;" />
			<col style="width:20%;" />
		</colgroup>
		<tbody>
			<tr>
				<td>첫번째 칸</td>
				<td colspan="2">두번째 칸</td>
			</tr>
			<tr>
				<td>aaa</td>
				<td colspan="2">bbbb</td>
			</tr>
			<tr>
				<td>ccc</td>
				<td>ddd</td>
				<td>eee</td>
			</tr>
			<tr>
				<td colspan="3">병합</td>
			</tr>
		</tbody>
	</table>
	
	

</body>
</html>