package pro01;

class Parent150{
	void print() {
		System.out.println("parent - print method");
	}
	void test() {
		System.out.println("parent - test method");
	}
}

class Child150 extends Parent150{
	void print() {
		System.out.println("child - print method");
	}
	void check() {
		System.out.println("child - check method");
	}
}

public class Code150 {

	public static void main(String[] args) {
		Parent150 x = new Child150();
		x.print();
		x.test();
	}

}
