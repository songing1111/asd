package pro01;

class GrandParent{
	int x = 10;
	void show1() {
		System.out.println("I am grandparent show1");
	}
}

class Parent148 extends GrandParent{
	int y = 20;
	void show2() {
		System.out.println("I am parent show2");
	}
}

class Child148 extends Parent148{
	int z = 30;
	void show3() {
		System.out.println("I am child show3");
	}
}

public class Code148 {

	public static void main(String[] args) {
		Child148 t = new Child148();
		System.out.println("t.x : " + t.x);
		System.out.println("t.y : " + t.y);
		System.out.println("t.z : " + t.z);
		
		t.show1();
		t.show2();
		t.show3();
	}

}
