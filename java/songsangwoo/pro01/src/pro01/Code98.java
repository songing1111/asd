package pro01;

class Friend{		// Ŭ���� Friend���� �����ڰ� �ϳ��� ����
	String name;
	int age;
	
					// Friend(){} �����ڰ� �ϳ��� ���� ��쿡�� �ڵ����� ����Ʈ ������ ����
	void printFriend() {
		System.out.println("name : " + name + ", age " + age);
	}
}

public class Code98 {

	public static void main(String[] args) {
		Friend f = new Friend();	// ����Ʈ ������ �ڵ� ȣ��
		f.printFriend();			// �ν��Ͻ��� �����ϰ� �ٷ� ���
		f.name = "Alce";
		f.age = 20;
		f.printFriend();
		
	}

}
