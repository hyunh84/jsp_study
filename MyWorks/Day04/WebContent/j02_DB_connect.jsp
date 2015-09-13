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

	<h2>DB - 접속 및 데이터 저장하기</h2>
	<hr>
	
	<%--
		내가 작성하는 프로그램에서 DB 연동시 필요한 조건
			1. 해당 드라이버 다운로드 및 저장
				- 다운로드 위치 : www.oracle.com 해당 DB 홈페이지
					www.oracle.com -> Downloads -> Application -> Drivers의 JDBC Drivers클릭
				- 드라이버 이름 : 오라클의 경우, ojdbc버전숫자.jar
				- 저장 위치 : 프로젝트 > WebContent > WEB-INF > lib 폴더에 저장
				- 저장 후 서버 재가동
			
			2. import 및 try-catch 필요
				- DB 연동과 관련된 클래스들이 위치한 패키지 import필요
					1) java.sql 패키지
					2) 형식 : <%@ page import="java.sql.*" %>
				- 프로그램 작성시 예외 처리를 담당하는 try-catch구문필요
				
		DB 연동 및 이용하기
			1. Driver Load 확인
				- ojdbc6.jar 파일 이용 가능 여부 확인
				- 성공시 DB연결 처리 장치 이용가능을 의미한다.
				
			2. DB Connect(접속)
				- 필요 정보 3가지 : url / user / password
					1) url : 위치정보 
						>  오라클 DB형식 : jdbc:oracle:thin:@DB서버IP:DB접속포트번호:버전이름
					2) 예 :
						> jdbc:oracle:thin@192.168.33.108:1521:xe
					3) user : DB접속 계정 - para
					4) password : DB접속 계정의 비밀번호
					5) 성공 시 DB 접속 완료를 의미함	
							
			3. SQL문 작성 및 실행
				- 프로그램 측에서 DB에 명령을 실행시키는 작업
				- 우선적을로 명령문(SQL)이 작성되어야 한다.
				- SQL문은 String형태로 작성
				- 작성된 SQL문으로 실행을 명령함
				- 명령 종류 : 저장 / 수정 / 읽기 / 삭제
				
			4. 결과 확인 및 연동 종료
				- 실행된 SQL에 대한 결과가 프로그램 영역에 제공됨
				- 결과를 이용한 후, 연동 과정을 종료함
				- stream을 통한 접근이므로, .close()필요
					
					
					
	 --%>
	 
	 <%
	 	String msg = "알림내용";
	 	try{
	 		//1. Driver Load
	 		Class.forName("oracle.jdbc.driver.OracleDriver");
	 		System.out.println("#1. 드라이버 로딩 성공(이용가능)");
	 		
	 		//2. DB Connection
	 		String url = "jdbc:oracle:thin:@192.168.33.108:1521:xe";
	 		String user = "para";
	 		String password = "para";
	 		
	 		Connection conn = DriverManager.getConnection(url, user, password);
	 		System.out.println("#2. DB접속 성공 완료");
	 		
	 		//3. SQL 작성 및 실행, 결과 확인
	 		// 3-1 작성
	 		String sql = "insert into dbtest values('둘리', 10)";
	 		// 3-2 실행 객체생성
	 		PreparedStatement ps = conn.prepareStatement(sql);
	 		// 3-3  실행 및 결과 수신
	 		int res = ps.executeUpdate();
	 		
	 		if(res > 0) {
	 			msg = "저장완료";
	 		}else{
	 			msg = "저장실패";
	 		}
	 		
	 		
	 		//4. 연동 종료
	 		ps.close();
	 		conn.close();
	 		
	 	}catch(Exception e){
	 		e.printStackTrace();
	 	}
	 %>
	 
	 <script>
	 	alert("<%= msg %>");
	 </script>
	
		
	
	

</body>
</html>