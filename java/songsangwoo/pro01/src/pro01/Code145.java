package pro01;

class Circle1 {
	final double PI = 3.141592;
	private double radius;
	
	Circle1(){}
	Circle1(double radius){
		this.radius = radius;
	}
	
	double getRadius() {
		return radius;
	}
	
	void setRadius(double radius) {
		this.radius = radius;
	}
}

public class Code145 {

	public static void main(String[] args) {
		Circle1 c1 = new Circle1(1.5);
		Circle1 c2 = new Circle1(2.2);
		
		double c1Area = c1.PI * c1.getRadius() * c1.getRadius();
		double c2Area = c2.PI * c2.getRadius() * c2.getRadius();
		
		System.out.println("c1 area : " + c1Area);
		System.out.println("c2 area : " + c2Area);
	}

}
