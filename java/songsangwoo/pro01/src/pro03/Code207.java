package pro03;

class MyException extends Exception{
	int x;
	MyException(int x){
		this.x = x;
	}
	@Override
	public String toString() {
		return "I am " + x + " in MyException class";
	}
}

public class Code207 {

	public static void main(String[] args) {
		MyException me = new MyException(10);
		try {
			System.out.println("before throw MyException");
			throw me;
		}
		catch (MyException e) {
			System.out.println(e);
		}
		System.out.println("main ends");
	}
}
