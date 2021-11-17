package pro01;

public class Code61 {

	public static void main(String[] args) {
		int i;
		for (i=1;i<=7;i++) {
			System.out.println("before continue" + i);
			if (i % 2 == 0) {
				System.out.println("**********after continue" + i);
			}
		}
		int a = 255;
		byte b = (byte)a;
		System.out.println(b);
		

	}

}
