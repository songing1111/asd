package pro01;

class Car1{
	private String color;
	Car1(){}
	Car1(String color){
		this.color = color;
	}
}

class Sedan extends Car1 {
	private int seats;
	Sedan(){}
	Sedan(String color, int seats){
		super(color);
		this.seats = seats;
	}
	void showSeats() {
		System.out.println("This Car has " + seats + " seats.");
	}
}

class Truck extends Car1{
	private int wheel;
	Truck(){}
	Truck(String color, int wheel){
		super(color);
		this.wheel = wheel;
	}
	void showWheel() {
		System.out.println("This truck is " + wheel + " drive truck");
	}
}

public class Code153 {

	public static void main(String[] args) {
		Car1 myCar1 = new Sedan("white", 4);
		Car1 yourCar1 = new Truck("blue", 4);
		
		if (myCar1 instanceof Sedan) 
			((Sedan) myCar1).showSeats();
		if (yourCar1 instanceof Truck)
			((Truck)yourCar1).showWheel();
		
	}

}
