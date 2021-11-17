package pro01;

public class Code89 {

	public static void varArgTest(int...v) {
		System.out.println("number of arguments : " + v.length);
		for (int i=0; i<v.length; i++)
			System.out.println(v[i]);
	}
	
	public static void main(String[] args) {
		varArgTest();
		varArgTest(1);
		varArgTest(3,5);
		varArgTest(100, 200, 300);
	}

}
