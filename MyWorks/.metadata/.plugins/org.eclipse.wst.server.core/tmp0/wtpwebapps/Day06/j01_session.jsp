<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>


	<!-- 
		����(session)
		- ������ Ŭ���̾�Ʈ�� ���Ͽ�,
			������ ������ �������� �ӽ� ���� �޸𸮸� ���� �����ϴµ�
			�̷��� ������ �����̶� �Ѵ�.
		- ������ ���� ������ ����ϸ�,
			����� �޸��� ������ Ŭ���̾�Ʈ�� �������� �����ϰų�
			�⺻ ���� Ÿ��(����Ʈ 30��) �� ���û�� �߻����� �ʴ� ����̴�.
	 -->
	 
	 <%
// 	 	���� ��ü �̿�(���� �� ��ü�� ������ ��ü��)

// 		1. request�κ��� �����޴� ���
		HttpSession hSession = request.getSession();
	 
// 	 	2. jsp ���� ��ü �̿� ���
// 		session.
	 %>
	 
	 hSession = <%= hSession %> <br>
	 session = <%= session %> <br><br>
	 
	 1. ���� �����Ǿ� �ִ� ���� ���� �ð� ���� : 
	 	<%= session.getMaxInactiveInterval() %>��





</body>
</html>






















