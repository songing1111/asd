package pro01;

class Point1 {
	private int x;
	private int y;
	
	Point1 (){}
	Point1 (int x, int y){
		this.x = x;
		this.y = y;
	}
	
	int getX() {
		return x;
	}
	
	int getY() {
		return y;
	}
	
	void setX(int x) {
		this.x = x;
	}
	
	void setY(int y) {
		this.y = y;
	}
}

public class Code122 {
	
	static void add(Point1 A, Point1 B) {
		Point1 pl = new Point1();
		pl.setX(A.getX() + B.getX());
		pl.setY(A.getY() + B.getY());
		System.out.println("p1 + p2 : (" + pl.getX() + "," + pl.getY() + ")");
	}

	public static void main(String[] args) {
		Point1 p1 = new Point1(1, 3);
		Point1 p2 = new Point1(5, 8);
		
		System.out.println("p1 : (" + p1.getX() + "," + p1.getY() + ")");
		System.out.println("p2 : (" + p2.getX() + "," + p2.getY() + ")");
		add(p1, p2);
	}

}
