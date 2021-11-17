package pro01;

class Book4{
	String title;
	int price;
	
	Book4(){}
	Book4(String title){
		this.title = title;
	}
	
	Book4(String title, int price){
		this(title);
		this.price = price;
	}
}

public class Code112 {

	public static void main(String[] args) {
		//Book4 b = 
		new Book4("Java", 25000);
	}

}
