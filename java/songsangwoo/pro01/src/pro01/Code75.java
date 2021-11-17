package pro01;

public class Code75 {

	public static void main(String[] args) {
		int numbers[][] = {{10, 30, 20, 15},
						  {11, 5, 2, 9},
						  {7, 8, 1, 13}};
	
		for (int[] num : numbers) {
			for (int x : num) {
				System.out.print(x + " ");;
			}
			System.out.println();
		}
	}

}
