package abstracttest;

public class Student extends Person{
	private int year;
	public Student(int id, String name, int year) {
		super(id, name);
		this.year = year;
	}
	public void show() {
		System.out.println("id : " + getId());
		System.out.println("name : " + getName());
		System.out.println("year : " + year);
	}
}
