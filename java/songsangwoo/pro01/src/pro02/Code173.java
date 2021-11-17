package pro02;

interface WithDefault2{
	int get();
	default int getNext() {
		int value = get() + 10;
		return value;
	}
}

class Test2 implements WithDefault2{
	public int get() {
		return 100;
	}
}

class Test3 implements WithDefault2{
	public int get() {
		return 500;
	}
}

public class Code173 {

	public static void main(String[] args) {
		Test2 x = new Test2();
		System.out.println("x.getNext() : " + x.getNext());
		
		Test3 y = new Test3();
		System.out.println("y.getNext() : " + y.getNext());
	}

}
