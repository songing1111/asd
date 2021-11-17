package pro01;

class Person {
	static int count;
	String name;
	
	Person(){
		count ++;
	}
	
	void printCount() {
		System.out.println("count : " + count);
	}
}

public class Code115 {

	public static void main(String[] args) {
		Person p1 = new Person();
		Person p2 = new Person();
		p1.printCount();
		p2.printCount();	// 
		
	}

}
