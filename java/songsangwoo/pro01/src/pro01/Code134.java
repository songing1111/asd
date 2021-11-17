package pro01;

class parent1{
	private int dataA;
	
	parent1(){}
	parent1(int dataA){
		this.dataA = dataA;
	}
	
	void printA() {
		System.out.println("dataA : " + dataA);
	}
}

class Child1 extends parent1{
	private int dataB;
	
	Child1(){}
	Child1(int dataA, int dataB){
		super(dataA);
		this.dataB = dataB;			
	}
	
	void printB() {
		System.out.println("dataB : " + dataB);
	}
}

public class Code134 {

	public static void main(String[] args) {
		Child1 c = new Child1(10,20);
		c.printA();
		c.printB();
	}

}
