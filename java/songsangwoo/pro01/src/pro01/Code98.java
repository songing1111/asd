package pro01;

class Friend{		// 클래스 Friend에는 생성자가 하나도 없음
	String name;
	int age;
	
					// Friend(){} 생성자가 하나도 없는 경우에는 자동으로 디폴트 생성자 제공
	void printFriend() {
		System.out.println("name : " + name + ", age " + age);
	}
}

public class Code98 {

	public static void main(String[] args) {
		Friend f = new Friend();	// 디폴트 생성자 자동 호출
		f.printFriend();			// 인스턴스를 생성하고 바로 출력
		f.name = "Alce";
		f.age = 20;
		f.printFriend();
		
	}

}
