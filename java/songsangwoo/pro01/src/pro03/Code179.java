package pro03;

class Things{
	private String name;
	private int price;
	Things(String name, int price){
		this.name = name;
		this.price = price;
	}
	@Override
	public String toString() {
		return "name : " + name + ", price : " + price;
	}
}

public class Code179 {

	public static void main(String[] args) {
		Things t = new Things("book", 20000);
		String s = t.toString();
		System.out.println(s);
		System.out.println(t);
	}

}
