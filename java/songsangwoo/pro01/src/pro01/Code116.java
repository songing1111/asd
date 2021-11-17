package pro01;

class Data2 {
	static int x;
	int y;
	
	Data2(int x, int y){
		Data2.x = x;
		this.y = y;
	}
	
	void print() {
		System.out.println("x : " + x);
		System.out.println("y : " + y);
	}
}

public class Code116 {

	public static void main(String[] args) {
		Data2 d = new Data2(10,20);
		d.print();
	}

}
