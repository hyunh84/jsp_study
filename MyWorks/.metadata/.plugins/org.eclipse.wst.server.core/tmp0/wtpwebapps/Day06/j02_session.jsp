<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
// 		1. ���� �̿� - ���� ����
		session.setAttribute("StringŰ", "Object��");
		
// 		2. ���� �̿� - ����� ���� ����
// 			=> Object ���·� �����ǹǷ�, ������ �°� ����ȯ�ؾ� ��
		Object rcvValue = session.getAttribute("StringŰ");
		String value = (String)rcvValue;
		
// 		3. ���� ���� ����
		
// 		3-1. ���ϴ� Ű�� �̿��Ͽ� �����ϴ� ��
		session.removeAttribute("StringŰ");
	
// 		3-2. ���� ���� ���� ��� ����(�α׾ƿ� �� ���)
		session.invalidate();
		
// 		4. ���� ���� �ð� ����(����:��)
		session.setMaxInactiveInterval(30);
			
	%>



</body>
</html>


















