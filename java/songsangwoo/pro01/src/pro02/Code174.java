package pro02;

interface WithStatic{
	int get();
	static int getData() {
		return 100;
	}
}
public class Code174 {

	public static void main(String[] args) {
		System.out.println("WithStatic.getData() : " + WithStatic.getData());
	}

}
