package pro03;

import java.io.FileReader;
import java.io.IOException;
import java.nio.charset.Charset;

public class Code219 {

	public static void main(String[] args) {
		FileReader fis = null;
		try {
			fis = new FileReader("data3.txt", Charset.forName("UTF-8"));
			int x;
			while((x = fis.read()) != -1)
				System.out.print((char)x);
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
		}
	}

}
