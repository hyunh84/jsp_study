<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

	<h1>JSP �������� ������ ����</h1>
	<hr>
	<%-- ����� 
		1. <%! %> ��ȣ�� ǥ���Ǵ� ����
		2. ����� �����ϴ� �ڹ��� �޼ҵ带 ������ �� �ִ� ����
		3. ����ο� ������ �����ϸ�, ���������� �ǹ̸� ������.
	
	 --%>
	 
	 <%!
	 	String mth(int data) {
		 
		 	return "�Է¹��� �����ʹ� " + data + "�Դϴ�.";
	 	}
	 
	 	int ret() {
	 		return gdata;
	 	}
	 
	 	int gdata = 100;
	 %>
	 
	 
	
	  
	  <%
	  		int m = 20;
	  		
	  		String rcv = mth(m);
	  
// 	  		���� : mth(pp);
// 	  		=> ���������� �νĵǹǷ�, ����
	  		
	  		int pp = 40;
	  %>
	  
	  
	   <%-- 
	 		ǥ���� (Expression) : 
	 			1. <%= %>��ȣ�� ǥ���Ǵ� ����
	 			2. ���� ����� �� ���ȴ�.
	 			3. �޼ҵ��� ���ϰ� ��� ����
	 
	  --%>
	  
	  m = <%= m %> <br />
	  rcv = <%= rcv %> <br />
	  mth(32) = <%= mth(32) %>
	  


</body>
</html>