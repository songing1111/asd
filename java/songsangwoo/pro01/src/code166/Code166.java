package code166;

public class Code166 {

	public static void main(String[] args) {
		Book book[] = {new ComputerBook(1123, "java", 15), 
				new EnglishBook(2000, "Toefl", 2019),
				new EnglishBook(2001, "Toeic", 2018),
				new ComputerBook(1150, "Python", 17),
				new EnglishBook(2010, "Gre", 2018)};
		
		for (Book bk : book) {
			bk.printInfo();
			System.out.println();
		}
	}

}
