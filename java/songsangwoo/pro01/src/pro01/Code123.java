package pro01;

class Point{
	int x;
	int y;
	
	Point(int x, int y){
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

public class Code123 {
	
	static void change(Point t) {
		t.setX(10);
		t.setY(33);
	}

	public static void main(String[] args) {
		Point p = new Point(2,7);
		System.out.println("before : (" + p.getX() + "," + p.getY() + ")");
		change(p);
		System.out.println("after : (" + p.getX() + "," + p.getY() + ")");
	}
}

