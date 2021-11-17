package code166;

public class ComputerBook extends Book {
	private int stock;
	
	ComputerBook(){}
	ComputerBook(int code, String title, int stock){
		super(code, title);
		this.stock = stock;
	}
	
	void printInfo() {
		System.out.println("Computer Boo Info");
		System.out.println("----------------");
		System.out.println("code  : " + getCode());
		System.out.println("title : " + getTitle());
		System.out.println("stock : " + this.stock);
	}
}
