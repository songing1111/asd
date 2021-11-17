package pro01;

import java.util.Scanner;

public class Code85 {

	static int add(int x, int y) {
		int result;
		result = x + y;
		return result;
	}
	
	public static void main(String[] args) {
		Scanner scin = new Scanner(System.in);
		System.out.print("Enter two integers : ");
		int a = scin.nextInt();
		int b = scin.nextInt();
		int c = add(a,b);
		System.out.println(a + " + " + b + " = " + c);
		scin.close();
	}

}
