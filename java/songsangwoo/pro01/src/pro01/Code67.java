package pro01;

import java.util.Arrays;

public class Code67 {

	public static void main(String[] args) {
		int[] original = {4, 2, 9, 7, 10, 3};
		int[] destination = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
		
		System.arraycopy(original, 2 ,destination, 4, 3);
		System.out.println(Arrays.toString(original));		// original 배열 출력
		System.out.println(Arrays.toString(destination));	// destination 배열 출력
	}

}
