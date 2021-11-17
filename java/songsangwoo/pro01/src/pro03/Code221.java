package pro03;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class Code221 {

	public static void main(String[] args) {
		File file = new File("test.txt");
		Scanner scin = null;
		
		String a = "";
		short b = 0;
		boolean c = false;
		float d = 0.0f;
		long e = 0;
		byte f = 0;
		int g = 0;
		double h = 0.0;
		
		if (file.exists()) {
			try {
				scin = new Scanner(file);
				a = scin.next();
				b = scin.nextShort();
				c = scin.nextBoolean();
				d = scin.nextFloat();
				e = scin.nextLong();
				f = scin.nextByte();
				g = scin.nextInt();
				h = scin.nextDouble();
			}
			catch(FileNotFoundException exp) {
				System.out.println(exp);
			}
		}
		System.out.println("a : " + a);
		System.out.println("b : " + b);
		System.out.println("c : " + c);
		System.out.println("d : " + d);
		System.out.println("e : " + e);
		System.out.println("f : " + f);
		System.out.println("g : " + g);
		System.out.println("h : " + h);
	}

}
