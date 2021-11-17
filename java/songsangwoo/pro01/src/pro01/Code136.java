package pro01;

class parent2{
	int data = 10;
}

class Child2 extends parent2{
	int data = 20;
	
	void printData() {
		System.out.println("data from Child2 : " + this.data);
		System.out.println("data from parent2 : " + super.data);
		System.out.println("data from Child2 : " + data);
	}
}

public class Code136 {

	public static void main(String[] args) {
		Child2 c = new Child2();
		c.printData();
	}

}
