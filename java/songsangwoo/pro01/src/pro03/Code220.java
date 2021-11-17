package pro03;

import java.io.FileReader;
import java.io.IOException;
import java.nio.charset.Charset;

public class Code220 {
		
	public static void main(String[] args) {
		FileReader fis = null;
		char data[] = new char[50];
		try {
			fis = new FileReader("data3.txt", Charset.forName("UTF-8"));
			fis.read(data);
			for(int x : data)
				System.out.print((char)x);
		}
		catch(IOException e) {
			System.out.println(e);
		}
		finally {
			try {
				fis.close();
			}
			catch (IOException e) {
				System.out.println(e);
			}
		}
	}

}
