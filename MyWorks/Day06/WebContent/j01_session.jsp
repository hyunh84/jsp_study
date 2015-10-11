<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>


	<!-- 
		세션(session)
		- 접속한 클라이언트에 대하여,
			브라우저 단위로 개별적인 임시 공간 메모리를 만들어서 제공하는데
			이러한 공간을 세션이라 한다.
		- 서버가 직접 세션을 사용하며,
			저장된 메모리의 삭제는 클라이언트가 브라우저를 종료하거나
			기본 세션 타입(디폴트 30분) 중 재요청이 발생되지 않는 경우이다.
	 -->
	 
	 <%
// 	 	세션 객체 이용(다음 두 객체는 동일한 객체임)

// 		1. request로부터 제공받는 방법
		HttpSession hSession = request.getSession();
	 
// 	 	2. jsp 내장 객체 이용 방법
// 		session.
	 %>
	 
	 hSession = <%= hSession %> <br>
	 session = <%= session %> <br><br>
	 
	 1. 현재 설정되어 있는 세션 유지 시간 정보 : 
	 	<%= session.getMaxInactiveInterval() %>초





</body>
</html>






















