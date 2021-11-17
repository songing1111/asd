package pro03;

import java.io.*;

public class Code223 {

	public static void main(String[] args) {
		String content = "Hello Java Programmers";
		byte[] bytes = content.getBytes();
		FileOutputStream fos = null;
		
		try {
			fos = new FileOutputStream("data4.txt");
			fos.write(bytes);
		}
		catch(IOException e) {
			e.printStackTrace();
		}
		finally {
			try {
				fos.close();
			}
			catch(IOException e) {
				System.out.println(e);
			}
		}
	}

}
