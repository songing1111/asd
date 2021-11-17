package pro03;

import java.util.Scanner;

public class Code208 {

	public static void main(String[] args) {
		Scanner scin = new Scanner(System.in);
		System.out.print("Name : ");
		String name = scin.next();
		System.out.print("Phone number : ");
		String phone = scin.next();
		System.out.print("Age : ");
		int age = scin.nextInt();
		System.out.print("Height : ");
		float height = scin.nextFloat();
		System.out.print("Gender : ");
		char gender = scin.next().charAt(0);
		
		System.out.println("Name : " + name);
		System.out.println("Phone : " + phone);
		System.out.println("Age : " + age);
		System.out.println("Height : " + height);
		System.out.println("Gender : " + gender);
		scin.close();
	}

}
