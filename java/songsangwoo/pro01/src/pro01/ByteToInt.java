package pro01;

public class ByteToInt {

	public static void main(String[] args) {
		byte b1 = 10, b2 = 20;
		int b3; // b3�� byte�� �����ϸ� Type mismatch: cannot convert from int to byte / byte, short�� ����� int�� ��ȯ
		b3 = b1 + b2;
		System.out.println(b3);
		
	}

}
