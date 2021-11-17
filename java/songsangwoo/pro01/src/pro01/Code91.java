package pro01;

public class Code91 {

	static void overMethod() {
		System.out.println("No parameters.");
	}
	static void overMethod(int x) {
		System.out.println("One parameter.");
	}
	static void overMethod(int x, int y) {
		System.out.println("two integer parameters : (" + x + ", "+ y +")");
	}
	static void overMethod(int x, double y) {
		System.out.println("One integer " + x + " and the other double " + y);
	}
	
	
	public static void main(String[] args) {
		overMethod();
		overMethod(10);
		overMethod(5,7);
		overMethod(100, 25.5);
	}

}
