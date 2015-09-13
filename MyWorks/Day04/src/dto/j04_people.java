package dto;

import java.util.Date;

//dto : Date Transfer Object
// - ������ ������ ����ϴ� ��ü
// - setter/getter�� �ʿ��ϴ�.
// - DB ���̺� ���ϸ��� ���� �̸��� ������ ����� ����Ѵ�.

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
