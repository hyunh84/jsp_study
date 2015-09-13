<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

<style type="text/css">
	* {margin:0; padding:0;}
	h2 {padding:20px 10px;}
	table {border-collapse:collapse; }
	table th {padding:5px; border:1px solid #777;}
	table td {padding:5px; border:1px solid #777;}
</style>
<script type="text/javascript" src="/Day04/js/jquery-1.11.3.min.js"></script>

</head>
<body>

	<h2>DB - 인사정보 접속 및 레코드 저장</h2>
	<hr>
	
	<%--
		
	 --%>
	 
	 <%
	 	String msg = null;	
	 
	 	try{
	 		//1. 
	 		Class.forName("oracle.jdbc.driver.OracleDriver");
	 		System.out.println("#1. Driver Load End");
	 		
	 		//2. DB Connection
	 		String url = "jdbc:oracle:thin:@192.168.33.108:1521:xe";
	 		String user = "para";
	 		String password = "para";
	 		
	 		Connection conn = DriverManager.getConnection(url, user, password);
	 		System.out.println("#2. Connection Comp");
	 		
	 		//3. SQL 작성 및 실행
	 		
	 		//String sql = "insert into peoinfo values(번호, 이름, 나이, 등록일)";
	 		String sql = "insert into peoinfo values(peopleinfo_seq.nextval, ?, ?, sysdate)";
	 		// 변수로 값을 넣을 자리에 ?를 입력한다.
	 		
	 		
	 		request.setCharacterEncoding("utf-8");
	 		String name = request.getParameter("name");
	 		String rcv = request.getParameter("age");
	 		int age = Integer.parseInt(rcv);
	 		
	 		PreparedStatement ps = conn.prepareStatement(sql);
	 		ps.setString(1, name);
	 		ps.setInt(2, age);
	 		
	 		int res = ps.executeUpdate();
	 		if(res > 0) {
	 			msg = "저장이 완료되었습니다.";	 			
	 		}else{
	 			msg = "저장이 실패했습니다.";	 			
	 		}
	 		
	 		//4. 종료
	 		ps.close();//conn을먼저 닫으면 ps를 닫을 수 없음
	 		conn.close();
	 		
	 	}catch(Exception e){
	 		e.printStackTrace();
	 	}
	 %>
<%-- 	 결과 : <%=msg%> --%>
	 
<%-- 	 <jsp:forward page="/j04_peo01.jsp"></jsp:forward> --%>

	<script type="text/javascript">
		alert("<%=msg%>");
		location.href="/Day04/j04_peo01.jsp";
	</script>
		
	
	

</body>
</html>