package pro01;

public class Code74 {

	public static void main(String[] args) {
		char alpha[] = {'A', 'B', 'C', 'D', 'E'};
		for (char x : alpha) {
			System.out.println(x + ":" + (char)(x + 32));
		}
	}

}
