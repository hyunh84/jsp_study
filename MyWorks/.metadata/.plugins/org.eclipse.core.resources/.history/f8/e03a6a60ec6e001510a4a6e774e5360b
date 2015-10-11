<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="dao.J01_LogDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

	<h2>DB 접속 && 로그인 가능 여부 확인 && 결과 메시지 발송</h2>
	
	<%
		String tid = request.getParameter("id");
		String tpw = request.getParameter("pw");
	
		J01_LogDao dao = new J01_LogDao();
		int res = dao.login(tid, tpw);
		
		String msg = null;
		
		if(res==1) {
			msg = "로그인 성공";
			session.setAttribute("nowLog", tid);
			
		} else if(res==2) {
			msg = "비밀번호 불일치";
		} else if(res==0) {
			msg = "존재하지 않는 아이디입니다.";
		}
		
	%>
	
	<script type="text/javascript">
		alert("<%= msg %>");
		location.href="/index.jsp";
	</script>


</body>
</html>











