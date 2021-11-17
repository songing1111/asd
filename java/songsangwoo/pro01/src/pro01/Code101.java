package pro01;

class Friends {
	String name;
	int age;
	
	Friends(){};
	Friends(String n, int a){
		name = n;
		age = a;
	}
	void printFriends() {
		System.out.println("name : " + name + ", age : " + age);
	}
}

public class Code101 {

	public static void main(String[] args) {
		Friends f = new Friends("Alice", 20);
		f.printFriends();
	}

}
