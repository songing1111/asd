package pro01;

class Circle146{
	static final double Pi = 3.141592;
	private double radius;
	
	Circle146(){}
	Circle146(double radius){
		this.radius = radius;
	}
	
	double getRadius() {
		return radius;
	}
	
	void setRadius(double radius) {
		this.radius = radius;
	}
}

public class Code146 {

	public static void main(String[] args) {
		Circle146 c1 = new Circle146(1.5);
		Circle146 c2 = new Circle146(2.2);
		
		double c1Area = Circle.Pi * c1.getRadius() * c1.getRadius();
		double c2Area = Circle.Pi * c2.getRadius() * c2.getRadius();
		
		System.out.println("c1 area : " + c1Area);
		System.out.println("c2 area : " + c2Area);
	}

}
