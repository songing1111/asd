package pro01;

import java.util.Arrays;

public class TwoDArray {

	public static void main(String[] args) {
		int[][] data = new int[3][4];
		data[0][0] = 10;
		data[0][1] = 15;
		data[0][2] = 7;
		data[0][3] = 3;
		data[1][0] = 1;
		data[1][1] = 5;
		data[1][2] = 17;
		data[1][3] = 30;
		data[2][0] = 20;
		data[2][1] = 2;
		data[2][2] = 6;
		data[2][3] = 13;
		
		System.out.println(Arrays.deepToString(data));
	}

}
