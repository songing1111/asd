package pro01;

public class Code16 {

	public static void main(String[] args) {
		long l = 2147483648L;
		System.out.println(l);
		
		l = -2147483649L;
		System.out.println(l);
		
		l = 2147483647;
		System.out.println(l);
		l++;
		System.out.println(l);
	}

}
