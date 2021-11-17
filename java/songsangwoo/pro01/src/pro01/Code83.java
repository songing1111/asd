package pro01;

public class Code83 {

	public static void findPower(int x, int y) {
		int result = 1;
		for (int a = 1; a <= y; a++) {
			result *= x;
		}
	System.out.println(x + "ÀÇ " + y + "Á¦°ö : " + result);
	}
	
	public static void main(String[] args) {
		int a = 2, b = 10;
		findPower(a,b);
	}

}
