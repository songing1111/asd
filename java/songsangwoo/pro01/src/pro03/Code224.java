package pro03;

import java.io.FileWriter;
import java.io.IOException;

public class Code224 {

	public static void main(String[] args) {
		char[] cbuf = {'J', 'A', 'V', 'A'};
		String lang = "Language";
		FileWriter fos = null;
		
		try {
			fos = new FileWriter("data5.txt");
			fos.write(cbuf);
			fos.write("\n------------------------\n");
			fos.write(lang);
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
