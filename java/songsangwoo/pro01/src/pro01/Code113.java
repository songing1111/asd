package pro01;

class Student1 {
	int number;
	String name;
	double score;
	
	Student1(){}
	Student1(int number) {
		this.number = number;
	}
	
	Student1(int number, String name){
		this(number);
		this.name = name;
	}
	
	Student1(int number, String name, double score){
		this(number, name);
		this.score = score;
	}
}

public class Code113 {

	public static void main(String[] args) {
		// Student1 s = 
		new Student1(10, "Paul", 88.5);
	}

}
