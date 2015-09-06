<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

	<h1>JSP 페이지의 세가지 영역</h1>
	<hr>
	<%-- 선언부 
		1. <%! %> 기호로 표현되는 영역
		2. 기능을 수행하는 자바의 메소드를 정의할 수 있는 영역
		3. 선언부에 변수를 선언하면, 전역변수의 의미를 가진다.
	
	 --%>
	 
	 <%!
	 	String mth(int data) {
		 
		 	return "입력받은 데이터는 " + data + "입니다.";
	 	}
	 
	 	int ret() {
	 		return gdata;
	 	}
	 
	 	int gdata = 100;
	 %>
	 
	 
	
	  
	  <%
	  		int m = 20;
	  		
	  		String rcv = mth(m);
	  
// 	  		에러 : mth(pp);
// 	  		=> 지역변수로 인식되므로, 에러
	  		
	  		int pp = 40;
	  %>
	  
	  
	   <%-- 
	 		표현식 (Expression) : 
	 			1. <%= %>기호로 표현되는 영역
	 			2. 값을 출력할 때 사용된다.
	 			3. 메소드의 리턴값 출력 가능
	 
	  --%>
	  
	  m = <%= m %> <br />
	  rcv = <%= rcv %> <br />
	  mth(32) = <%= mth(32) %>
	  


</body>
</html>