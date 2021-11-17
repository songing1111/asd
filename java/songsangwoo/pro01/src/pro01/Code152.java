package pro01;

class Data10{
	void print() {
		System.out.println("class Data10 print method");
	}
}

class Data20{
	void show() {
		System.out.println("class Data20 show method");
	}
}

public class Code152 {

	public static void main(String[] args) {
		Data10 d1 = new Data10();
		Data20 d2 = new Data20();
		
		if (d1 instanceof Data10)
			d1.print();
		if (d2 instanceof Data20)
			d2.show();
	}

}
