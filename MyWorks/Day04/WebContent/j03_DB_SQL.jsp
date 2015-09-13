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

	<h2>DB - SQL 명령문</h2>
	<hr>
	
	<%--
		* SQL 명령문 이용
		* 참고 : 저장되는 데이터 1개 단위를 '레코드'라고 부른다.
		
		1. 레코드 저장
			- 키워드 : insert
			- 형식 : 
				1-1. 테이블의 열(항목) 순서대로 저장하는 경우
					- insert into 테이블명 values(값1, 값2...)
					ex) insert into dbtest values('둘리', 10)
				1-2. 테이블의 지정된 열에만 값을 저장하는 경우
					- insert into 테이블명(열이름1, 열이름2...) values(값1, 값2...)
					ex) insert into dbtest(name, age) values('둘리', 10)
				1-3. 날짜를 저장하는 경우
					- 사용되는 키워드 : sysdate
					- DB시스템 자체적으로 레코드를 저장하는 날짜를 스스로 인식해서 처리하도록 하는 명령
					ex) insert into dbtest(name, regdate) values('둘리', sysdate)
				1-4. 레코드들에 자동으로 번호 붙이기
					- 사용되는 기능 : 시퀀스 기능 사용
					- DB자체적으로 원하는 테이블에 대하여 저장되는 레코드에 차례로 번호를 붙이는 작업을 전담하는 기능
					- 시퀀스를 생성한 후 이용해야 한다.
					- 사용키워드 : 시퀀스이름.nextval
						ex) insert into dbtest(name, num) values('둘리', dbtest_seq.nextval)
								
		2. 레코드 읽기
			- 키워드 : select
			- 형식 : 
				2-1. 테이블의 모든 레코드를 조회하는 경우
					- select * form 테이블명
					ex) select * form dbtest
				2-2. 테이블의 특정 열의 값만 조회하는 경우
					ex) select * form dbtest(name, num)
				2-3. 조건이나 정렬 설정으로 조회하는 경우
					- 조건 설정시에는 where사용(주의 : 값의 동일성 확인 기호는 = 사용)
					ex) select * from dbtest where age = 10;
					ex) select * from dbtest where name = '둘리';
					ex) select * from dbtest where age >= 10 and age < 20;
				2-4. 정렬 설정시 order 사용
					- order by 열이름 (asc - 오름차순 || desc - 내림차순)
					ex) select * from dbtest order by age asc;
				2-5. 조건및 정렬사용
					- where 조건 order by ~
					ex) select * from dbtest where age >= 10 and age < 20 order by age asc;
									
		3. 레코드 수정
			- 키워드 : update
			- 형식 : 
				3-1.  update 테이블명 set 수정내용 (where조건)
				ex) update dbtest set age = age+1
				ex) update dbtest set age = age+1 where name = '둘리'
								
		4. 레코드 삭제
			- 키워드 : delete
			- 형식 :
				4-1. 테이블 전체 삭제
					- delete 테이블명
				4-2. 원하는 조건에 대한 레코드만 삭제
					- delete 테이블명 where 조건
					ex) delete dbtest where name='둘리'
					
		5. 작성된 SQL문 실행하는 메소드
			- executeUpdate() : 저장, 수정, 삭제 시 사용됨 - 성공한 레코드 개수를 제공함(형태 = int)
			- executeQuery() : 조회(읽기)시 사용됨 - 조회한 정보를 ResultSet이라는 형태의 객체로 제공 
			
		
			
	 --%>
	 
	 <%
	 	
	 %>
	 
	 
	
		
	
	

</body>
</html>