package code164;

public class Child extends Parent {
	void print() {
		System.out.println("I am child print");
	}
	
	@Override
	void call() {	//call() �޼ҵ带 �������̵����� ������ ���� �߻�
		System.out.println("I am child call");
	}
}
