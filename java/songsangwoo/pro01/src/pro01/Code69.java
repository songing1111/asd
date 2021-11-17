package pro01;

import java.util.Arrays;

public class Code69 {

	public static void main(String[] args) {
		int data1[] = {4, 2, 9, 10, 1};
		int data2[];
		
		data2 = data1;		// 하나의 배열을 공유 (주소가 같아지므로 결과값이 따라 바뀜)
		data1[2] = 5000;
		System.out.println("data1 : " + Arrays.toString(data1));
		System.out.println("data2 : " + Arrays.toString(data2));
		
	}

}
