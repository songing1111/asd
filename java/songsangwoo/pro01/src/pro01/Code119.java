package pro01;

class Book2{
	private String title;
	private int price;
	
	Book2(){}
	Book2(String title, int price){
		this.title = title;
		this.price = price;
	}
	
	void printBook2() {
		System.out.println("title : " + title);
		System.out.println("price : " + price);
	}
}

public class Code119 {

	public static void main(String[] args) {
		Book2 bk = new Book2("Java Programming", 25000);
		bk.printBook2();
		//bk.price = 27000; private 이기 때문에 불가능
	}

}
