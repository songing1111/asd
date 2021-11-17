package pro01;

class Parent10{
	int a = 10;
	void show() {
		System.out.println("I am parent10 show");
	}
}

class Child10 extends Parent10{
	int b = 20;
	void show1() {
		System.out.println("I am child10 show");
	}
}

class Child20 extends Parent10{
	int c = 30;
	void show2() {
		System.out.println("I am child20 show");
	}
}

public class Code147 {

	public static void main(String[] args) {
		Child10 c1 = new Child10();
		Child20 c2 = new Child20();
		System.out.println("c1.a : " + c1.a);
		System.out.println("c1.b : " + c1.b);
		System.out.println("c2.a : " + c2.a);
		System.out.println("c2.b : " + c2.c);
		c1.show();
		c1.show1();
		c2.show();
		c2.show2();
	}

}
