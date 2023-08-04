package common;

public class Person {
	private String name; // 멤버변수는의 접근지정자는 private
	private int age;
	
	public Person() { // 기본 생성자
		
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

	public Person(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}
	
	

}
