package pro02;

interface WithDefault {
	int COUNT = 100;
	void test();
	default void show() {
		System.out.println("I am show");
	}
}

class Test implements WithDefault{
	public void test() {
		System.out.println("I am test");
	}
}

public class Code172 {

	public static void main(String[] args) {
		Test t = new Test();
		t.test();
		t.show();
	}

}
