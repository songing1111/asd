package pro01;

class PersonInfo{
	String name;
	int age;
	double height;
}

public class Code106 {

	public static void main(String[] args) {
		PersonInfo p = new PersonInfo();
		p.name = "Alice";
		p.age = 12;
		p.height = 120.5;
		System.out.println("p.name : " + p.name);
		System.out.println("p.age : " + p.age);
		System.out.println("p.height : " + p.height);
	}

}
