package pro03;

class Thing extends Object{
	private String name;
	private int count;
	Thing(){}
	Thing(String name, int count){
		this.name = name;
		this.count = count;
	}
	void print() {
		System.out.println("name : " + name);
		System.out.println("count : " + count);
	}
}

public class Code176 {

	public static void main(String[] args) {
		Thing th1 = new Thing("desk", 5);
		Thing th2 = new Thing("desk", 5);
		
		if (th1 == th2)
			System.out.println("Same Thing");
		else 
			System.out.println("Different Thing");
		
		System.out.println(th1);
		System.out.println(th2);
	}

}
