package pro03;

public class Code196 {

	public static void main(String[] args) {
		int n[] = {1, 3, 5, 6, 10};
		int i = 0;
		try {
			for(i=0; i<=5; i++) {
				System.out.println("n[" + i + "] = " + n[i]);
			}
		}
		catch(ArrayIndexOutOfBoundsException e) {
			System.out.println(i + "는 없는 인덱스입니다.");
		}
	}

}
