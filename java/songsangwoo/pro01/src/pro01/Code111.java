package pro01;

class Book{
	String title;
	int price;
	
	Book(String title, int price){
		this.title = title;
		this.price = price;
	}
}

public class Code111 {

	public static void main(String[] args) {
		Book b1 = new Book("Peter Pan", 10000);
		Book b2 = new Book("Aladdin", 9000);
		
		System.out.println(b1.title + ", " + b1.price);
		System.out.println(b2.title + ", " + b2.price);
	}

}
