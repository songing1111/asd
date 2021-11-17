package pro01;

class Student {
	int no;
	String name;
	double score;
	
	Student(int n){
		no = n;
	}
	
	void printStudent() {
		System.out.println("no : " + no + ", name : " + name + ", score : " + score);
	}
}

public class Code104 {

	public static void main(String[] args) {
		//Student s1 = new Student(); / 에러 발생 (Student() 가 존재하지 않음)
		Student s2 = new Student (10);
		//s1.printStudent();
		s2.printStudent();
	}

}
