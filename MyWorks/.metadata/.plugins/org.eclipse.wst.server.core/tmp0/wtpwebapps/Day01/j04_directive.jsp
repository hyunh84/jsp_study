<%@ page language="java" contentType="text/html; charset=euc-kr" pageEncoding="utf-8"%>
    
    <%-- 딻
    	Directive : 
	    	1. <%@ %> 기호로 표현되는 영역
	    	2. 종류
	    		- page : JSP page에 대한 정보 설정
	    		- taglib : JSP page가 사용할 taglib를 지정
	    		- include : JSP page 특정 영역에 다른 page를 포함
    		
    	page Directive :
    		1. language : 사용할 언어 설정 - java
    		2. contentType : JSP가 생성하는 html 문서에 대한 설정
    			- 타입 설정 : text/html, text/xml
    			- 문자 설정 : ISO-8859-1(기본 : 영문)
    							  euc-kr(한글포함)
								  utf-8    
			3. pageEncoding : 현재 JSP page 자체의 문자 설정
			4. import : JSP page가 사용할 외부 파일 지정    
    
     --%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<!-- HTML 주석기호 -->
	<%-- JSP 주석기호 브라우져 소스보기에서 노출안됨 --%>
	
	<h1>JSP : Java Server Page</h1>
	<br />
	<br />
	자바언어를 사용할 수 있는 Web 페이지 입니다.
	
	
	
	
	
	

</body>
</html>