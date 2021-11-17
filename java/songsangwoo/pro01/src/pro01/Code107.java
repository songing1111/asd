package pro01;

class Data{
	int value;
	static int count;
	
	void print() {
		System.out.println("value : " + value);
		System.out.println("count : " + count);
	}
}

public class Code107 {

	public static void main(String[] args) {
		Data d1 = new Data();
		Data d2 = new Data();
		d1.print();
		d2.print();
	}

}
