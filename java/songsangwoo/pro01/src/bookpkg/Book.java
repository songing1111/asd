package bookpkg;

public class Book {
	private int code;
	private String title;
	private int price;
	
	public Book() {}
	public Book(int code, String title, int price) {
		this.code = code;
		this.title = title;
		this.price = price;
	}
	public int getCode() {
		return code;
	}
	
	public String getTitle() {
		return title;
	}
	
	public int getPrice() {
		return price;
	}
	
	public void printBookInfo() {
		System.out.println("code : " + code);
		System.out.println("title : " + title);
		System.out.println("price : " + price);
	}
	
	
	public static void main(String[] args) {

	}

}
