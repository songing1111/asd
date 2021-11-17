package pro01;

import java.util.Scanner;

public class Code86 {
	static boolean check(int n) {
		if(n % 2 == 0)
			return true;
		else
			return false;
	}

	public static void main(String[] args) {
		Scanner scin = new Scanner(System.in);
		System.out.print("Enter one number : ");
		int a = scin.nextInt();
		if (check(a) == true)
			System.out.println(a + " is even number");
		else
			System.out.println(a + " is odd number");
		scin.close();
	}

}
