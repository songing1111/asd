package pro01;

class Friend1{
	String name;
	int age;
	
	Friend1(String name, int age){
		this.name = name;
		this.age = age;
	}
	
	void hello() {
		System.out.println("Hello");
	}
	
	void printFriend1() {
		this.hello();
		System.out.println("name : " + this.name + ", age : " + this.age);
	}
}

public class This {

	public static void main(String[] args) {
		Friend1 s = new Friend1("Alice",12);
		s.printFriend1();
		
		
	}

}
