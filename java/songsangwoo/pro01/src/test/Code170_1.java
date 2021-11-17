package test;

interface Person{
	void print();
}

class Teacher implements Person{
	public void print() {
		System.out.println("teacher");
	}
}

class Student implements Person{
	public void print() {
		System.out.println("student");
	}
}

public class Code170_1 {

	public static void main(String[] args) {
		Person t = new Teacher();
		Person s = new Student();
		t.print();
		s.print();
	}

}
