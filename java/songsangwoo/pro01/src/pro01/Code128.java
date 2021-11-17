package pro01;

class Person1{
	private String name;
	private String phone;
	
	Person1(){}
	Person1(String name, String phone){
		this.name = name;
		this.phone = phone;
	}
	
	void printPerson1() {
		System.out.println("name : " + name);
		System.out.println("phone : " + phone);
	}
}

class Student4 extends Person1 {
	private int score;

	Student4(){}
	Student4(String name, String phone, int score){
		super(name, phone);
		this.score = score;
	}
	
	void printStudent4() {
		printPerson1();
		System.out.println("score : " +score);
	}
}



public class Code128 {

	public static void main(String[] args) {
		Student4 s = new Student4("Alice", "010-111-1111", 90);
		s.printStudent4();
	}

}
