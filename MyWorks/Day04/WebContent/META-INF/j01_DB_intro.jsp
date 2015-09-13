<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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

	<h2>DB - setting</h2>
	<hr>
	
	<%--
		데이터베이스의 이용
		
		1. 데이터 베이스 : 
			- 자료 저장을 목적으로 설계된 시스템
			- 종류 : oracle, mssql, mysql등
		
		2. 오라클 DB이용 : 
			- 다운로드 : www.oracle.com
			- 설치 시 수업시간에 설정한 system 계정 암호 : oracle
			- 버전별 데이터베이스 이름
				1) Enterprise : 기업용 - orcl
				2) Express : 개인용(학습) - xe
			- 사용 포트
				1) 1521 : 
					- Oracle Database Listener
					- .JAVA파일에서 DB에 접속할 때 사용하는 포트번호
					
				2) 8080:
					- Oracle Http Listner
					- 인터넷 브라우져를 통해 접속할때 사용되는 포트번호
					- 이미 설치한 Tomcat이 이미 8080을 사용하고 있기 때문에 기본적으로 제공하는 DB포트번호가 충돌을 일으키므로 포트번호 변경필요
						1. 시작 - 메뉴 - SQL Command Line 클릭
						2. 관리자 계정으로 접속 : connect system
						3. 암호 입력 : oracle 화면에 표시되지 않음
						4. 포트번호 9000으로 변경 : exec dbms_xdb.sethttpport(변경포트번호);
						5. 포트번호 확인 : select dbms_xdb.gethttpport() from dual;
						6. 나오기 : exit
				
				3) 2030
					- Oracle Service for Microsoft Transaction Server
					
			3. 설치 후 확인 및 계정 설정
				- 브라우져 url에 다음 명령
					1) 워크스페이스 생성 화면 (2가지)
						- Get started 아이콘 클릭 
						- http:\\127.0.0.1:포트번호/apex/f?p=4950
					2) 로그인 화면 : http:\\127.0.0.1:포트번호/apex/f?p=4550
				- 계정 만들기
					1) 워크스페이스 화면 접속
					2) Application Express접속
					3) system 계정으로 로그인
					4) 계정내용 입력 후 Create Workspace클릭
					5) 로그인 화면에서 생성된 계정으로 로그인
			
			4. 테이블 생성
				- SQL문 이용 방법
					1) 형식 : 
						create table 테이블명(
							항목이름 형태,
							항목이름 형태
						);
						ex)
						create table dbtest(
							name varchar2,
							age number
						);
				- varchar2(문자처리 형태) 크기
					Express버전에서 한글 1글자 = 3byte
						
			
			
	 --%>
	
		
	
	

</body>
</html>