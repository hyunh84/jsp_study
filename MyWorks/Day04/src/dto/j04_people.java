package dto;

import java.util.Date;

//dto : Date Transfer Object
// - 데이터 전송을 담당하는 객체
// - setter/getter가 필요하다.
// - DB 테이블 열일름과 같은 이름의 변수를 만들어 사용한다.

public class j04_people {
	int num;
	String name;
	int age;
	Date regdate;
	
	
	public j04_people(int num, String name, int age) {
		this.num = num;
		this.name = name;
		this.age = age;
	}
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	
}
