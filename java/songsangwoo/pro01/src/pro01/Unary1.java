package pro01;

public class Unary1 {

	public static void main(String[] args) {
		int hap, j, k, L;
		j = k = L = 0;
		hap = ++j + k++ + ++L;
		System.out.printf("hap = %d, j = %d, k = %d, L = %d\n", hap, j, k, L);
	}

}
