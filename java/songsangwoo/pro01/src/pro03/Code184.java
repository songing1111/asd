package pro03;

public class Code184 {

	public static void main(String[] args) {
		StringBuffer sb1 = new StringBuffer("Hello");
		
		StringBuffer sb2 = new StringBuffer();
		sb2.append("World");
		
		StringBuffer sb3 = new StringBuffer(20);
		sb3.append("Java Programming is created by James Gosling");
		System.out.println(sb1);
		System.out.println(sb2);
		System.out.println(sb3);
		
		System.out.println(sb1.capacity());
		System.out.println(sb2.capacity());
		System.out.println(sb3.capacity());
	}

}
