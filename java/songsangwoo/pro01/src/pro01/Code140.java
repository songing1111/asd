package pro01;

class parent3{
	void print() {
		System.out.println("I am parent3 print");
	}
}

class Child3 extends parent3{
	void print() {
		super.print();
	}
}

public class Code140 {

	public static void main(String[] args) {
		Child3 c = new Child3();
		c.print();
	}

}
