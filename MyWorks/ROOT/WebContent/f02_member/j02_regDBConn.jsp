<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="dao.J02_MemberDao" %>
<%@ page import="dto.Member" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		request.setCharacterEncoding("euc-kr");
	
// 		1. 파라미터 수신
		Member regDto = new Member();
	
		String id = request.getParameter("id");
		regDto.setId(id);
		
		regDto.setPw(request.getParameter("pw"));
		regDto.setName(request.getParameter("name"));
		
		String rAge = request.getParameter("age");
		int age = Integer.parseInt(rAge);
		regDto.setAge(age);
		
		String gender = request.getParameter("gender");
		regDto.setGender(gender);
		

// 		2. DB 접속
		J02_MemberDao dao = new J02_MemberDao();
		int res = dao.regMember(regDto);

		
// 		3. 결과 제공
		String msg = null;
		if(res > 0) {
			msg = "회원가입이 완료되었습니다.";
		} else {
			msg = "회원가입 실패";
		}
	
	%>
	
	<script type="text/javascript">
		alert("<%= msg %>");
		location.href = "/index.jsp";
	</script>




</body>
</html>


















