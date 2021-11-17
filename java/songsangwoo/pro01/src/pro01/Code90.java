package pro01;

public class Code90 {

	public static int largerThanValue(int value, int...v) {
		int sum = 0;
		for (int i=0; i<v.length; i++) {
			if (v[i] >= value)
				sum += v[i];
		}
		return sum;
	}
	
	public static void main(String[] args) {
		int largerSum;
		largerSum = largerThanValue(10, 5, 3, 11, 17, 2, 20, 15);
		System.out.println("sum : " + largerSum);
	}

}
