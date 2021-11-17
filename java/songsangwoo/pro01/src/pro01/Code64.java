package pro01;

public class Code64 {

	public static void main(String[] args) {
		int score[] = new int[] {90, 85, 92, 75, 88};
		
		for (int i=0; i<score.length; i++) {
			System.out.println("score["+i+"] = " + score[i]);
			System.out.printf("score[%d] = %d\n" ,i, score[i]);
		}
	}

}
