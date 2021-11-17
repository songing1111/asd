package pro01;

class Dogs {
	String name;
	String color;
	
	Dogs() {
		System.out.println("Default constructor if called");
	}
	void printDogs() {
		System.out.println("name : " + name);
		System.out.println("color : " + color);
	}
}

public class Code99 {

	public static void main(String[] args) {
		Dogs d = new Dogs();
		d.printDogs();
		d.name = "½Î¸®";
		d.color = "Èò»ö";
		d.printDogs();
	}

}
