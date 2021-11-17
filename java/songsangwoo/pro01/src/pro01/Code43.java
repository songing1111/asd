package pro01;

public class Code43 {

	public static void main(String[] args) {
		int a = 10, b = 5, c = 20;
		boolean w, x, y, z;
		
		w = a > b;
		x = a == c;
		y = (a > b) && (b != c);
		z = !(a == b) || (a < b);
		
		System.out.println("w : " + w);
		System.out.println("x : " + x);
		System.out.println("y : " + y);
		System.out.println("z : " + z);
		
	}

}
