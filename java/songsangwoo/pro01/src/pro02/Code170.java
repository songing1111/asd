package pro02;

abstract class Person{
	abstract void print();
}

class Teacher extends Person{
	void print() {
		System.out.println("teacher");
	}
}

class Student extends Person{
	void print() {
		System.out.println("student");
	}
}

public class Code170 {

	public static void main(String[] args) {
		Person t = new Teacher();
		Person s = new Student();
		t.print();
		s.print();
	}

}
