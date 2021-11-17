package pro01;

class Car {
	String kind;	
	String color;	
	int year;		
	
	void run() {
		System.out.println("car is running");
	}
	
	void speedUp() {
		System.out.println("car is speeding up.");
	}
}

public class Code93 {

	public static void main(String[] args) {
		Car myCar = new Car();
		myCar.kind = "Sonata";
		myCar.color = "white";
		myCar.year = 2015;
		
		Car yourCar = new Car();
		yourCar.kind = "Pride";
		yourCar.color = "blue";
		yourCar.year = 2017;
		
		myCar.run();
		yourCar.run();
		
		myCar.speedUp();
		yourCar.speedUp();
		
		Car myCar2;
		myCar2 = myCar;
		
		System.out.println(myCar);
		System.out.println(myCar2);
		
	}

}
