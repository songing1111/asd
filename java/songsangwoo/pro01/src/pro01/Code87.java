package pro01;

import java.util.Arrays;

public class Code87 {

	static void updateArray(int[] B) {
		for (int i=0; i<B.length; i++)
			B[i] += 10;
	}
	
	public static void main(String[] args) {
		int[] A = {3, 5, 1, 9, 8, 10};
		System.out.println(Arrays.toString(A));
		updateArray(A);
		System.out.println(Arrays.toString(A));
	}

}
