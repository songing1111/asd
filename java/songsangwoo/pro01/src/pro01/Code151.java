package pro01;


class Person2{
	private String name;
	Person2(){}
	Person2(String name){
		this.name = name;
	}
	String getName() {
		return name;
	}
	void print() {
		System.out.println("I am " + name);
	}
}

class Teacher extends Person2{
	private String subject;
	Teacher(){}
	Teacher(String name, String subject){
		super(name);
		this.subject = subject;
	}
	void print() {
		System.out.println("I am " + getName() + " and I teach " + subject + ".");
	}
}

class Student5 extends Person2{
	private String year;
	Student5(){}
	Student5(String name, String year){
		super(name);
		this.year = year;
	}
	void print() {
		System.out.println("I am " + getName() + " and I am " + year + ".");
	}
}

public class Code151 {

	public static void main(String[] args) {
		Person2 p1 = new Teacher("Alice", "Math");
		Person2 p2 = new Student5("David", "sophomore");
		
		p1.print();
		p2.print();
	}

}
