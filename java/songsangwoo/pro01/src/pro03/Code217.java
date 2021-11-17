package pro03;

import java.io.*;

public class Code217 {

	public static void main(String[] args) {
		FileInputStream fis = null;
		byte b[] = new byte[50];
		try {
			fis = new FileInputStream("C:\\Users\\songi\\Desktop\\asd\\programming\\songsangwoo\\pro01\\src\\pro03\\data1");
			fis.read(b);
			for(byte x : b)
				System.out.print((char)x);
		}
		catch(FileNotFoundException e) {
			System.out.println("data1.txt�� ���� �����Դϴ�.");
		}
		catch(IOException e) {
			System.out.println(e);
		}
		finally {
			try {
				fis.close();
			}
			catch(IOException e) {
				System.out.println(e);
			}
			catch(NullPointerException e) {
				System.out.println("fis�� null ���� ������ �ֽ��ϴ�.");
			}
		}
	}

}
