<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>



	<h2>&lt;a&gt; 이용하기</h2>
	<hr>
	
	<%--
		a태그 : 원하는 페이지 이동 및 파라미터 정보 전송 가능
		
		경로 표현 방법 2가지
		 1 상대경로 :
		 	- 현재 위치(파일 위치)를 기준으로 상-하 관계로 원하는 위치 경로를 표현
		 	- 하위 디렉토리 파일인 경우 : 디렉토리 이름 및 파일 이름 표현
		 	- 상위 디렉토리 파일인 경우 : 이동 표현(../) 및 해당 디렉토리 이름 및 파일 이름 표현
		 	- 같은 디렉토리인 경우 : 파일 이름만 표현
		 
		 2. 절대경로 : 
		 	- 형식 : /프로젝트 이름/...
		 	- WebContent 위치가 절대기준위치로  설정됨
		 	- 현재 위치하고 있는 경로에 상관없이 동일한 형식으로 이용 가능함
	 --%>

	<a href="/Day02/j04_href02.jsp?data=12345">다음화면으로 이동</a>


</body>
</html>