<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h2>��ũ��Ʈ���� ǥ����</h2>
	<hr>
	
	<% //��ũ��Ʈ�� ����
		String name = "�Ѹ�";
		int age = (int)(Math.random() * 100);
		
		if(age > 19) {
	%>
		
		<%= name %>�� <%= age %> û�ҳ� ���� ����� �ƴմϴ�.
		
	<% //��ũ��Ʈ�� ����
		}else{
	%>
	
		<%= name %>�� <%= age %>û�ҳ� ���� ����Դϴ�.
		
	<% //��ũ��Ʈ�� ����
		}
	%>



</body>
</html>