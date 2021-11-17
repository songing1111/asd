package pro01;

public class ByteToInt {

	public static void main(String[] args) {
		byte b1 = 10, b2 = 20;
		int b3; // b3를 byte로 지정하면 Type mismatch: cannot convert from int to byte / byte, short는 연산시 int로 변환
		b3 = b1 + b2;
		System.out.println(b3);
		
	}

}
