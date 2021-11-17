package pro01;

class Parent22{}

class Child22 extends Parent22{}

class InstanceofExample{
	static void method1(Parent22 parent) {
		if(parent instanceof Child22) {
			Child22 child = (Child22) parent;
			System.out.println("method1 - Child�� ��ȯ ����");
		}
		else {
			System.out.println("method1 - Child�� ��ȯ���� ����");
		}
	}
	
	static void method2(Parent22 parent) {
		Child22 child = (Child22) parent;
		System.out.println("method2 - Child�� ��ȯ ����"); 	// �̰ͺ��� ���� ������ 
	}
}

public class Polymorph {

	public static void main(String[] args) {
		Parent22 parentA = new Child22();
		InstanceofExample.method1(parentA);
		InstanceofExample.method2(parentA);
		
		Parent22 parentB = new Parent22();
		InstanceofExample.method1(parentB);
		InstanceofExample.method2(parentB);
	}

}
