package pro01;

class Parent11{
	void print() {
		System.out.println("Parent - print method");
		
	}
	
	void test() {
		System.out.println("Parent - test method");
	}
}

class Child11 extends Parent11 { 
	void print() {
		System.out.println("child - print method");
		
	}
	void check() {
		System.out.println("child - check method");
	}
}

public class Code149 {

	public static void main(String[] args) {
		Parent11 p = new Parent11();
		p.print();
		p.test();
		//p.check();
		
		Child11 c = new Child11();
		c.print();
		c.test();
		c.check();
		
		Parent11 x = new Child11();
		x.print();
		x.test();
		//x.check();
	}

}
