<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page import="dto.j02_people" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h2>Ŭ������ Ȱ��</h2>
	<hr>
	
		<%
			j02_people info = new j02_people();
			
			info.setName("�Ѹ�");
			int rcv = (int)(Math.random()*100);
			info.setAge(rcv);
			
			if(info.getAge() > 19) {
		%>
			
			<%= info.getName() %>�� <%= info.getAge() %> û�ҳ� ���� ����� �ƴմϴ�.
			
		<% //��ũ��Ʈ�� ����
			}else{
		%>
		
			<%=  info.getName() %>�� <%= info.getAge() %>û�ҳ� ���� ����Դϴ�.
			
		<% //��ũ��Ʈ�� ����
			}
		%>


</body>
</html>