<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
// 		1. 세션 이용 - 정보 저장
		session.setAttribute("String키", "Object값");
		
// 		2. 세션 이용 - 저장된 정보 추출
// 			=> Object 형태로 제공되므로, 목적에 맞게 형변환해야 함
		Object rcvValue = session.getAttribute("String키");
		String value = (String)rcvValue;
		
// 		3. 세션 정보 삭제
		
// 		3-1. 원하는 키를 이용하여 삭제하는 법
		session.removeAttribute("String키");
	
// 		3-2. 현재 세션 정보 모두 제거(로그아웃 시 사용)
		session.invalidate();
		
// 		4. 세션 유지 시간 설정(단위:초)
		session.setMaxInactiveInterval(30);
			
	%>



</body>
</html>


















