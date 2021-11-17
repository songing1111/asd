package usebookpkg;

public class UseBook {

	public static void main(String[] args) {
		// Book bk = new Book(101, "algorithms", 25000); / 에러 발생 
		bookpkg.Book bk = new bookpkg.Book(101, "algorithms", 25000);
		bk.printBookInfo();
	}

}
