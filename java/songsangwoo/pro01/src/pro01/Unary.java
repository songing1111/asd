package pro01;

public class Unary {

	public static void main(String[] args) {
		int a = 1, b, c;
		b = a++ + a++; 
		System.out.println("b = " + b);
		System.out.println("a = " + a);
		
		a = 1;
		c = ++a + ++a;
		System.out.println("c = " + c);
		System.out.println("a = " + a);
		// CPU�� RAM���� ����� ������ �����ϱ� ����
	}

}
