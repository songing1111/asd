package pro03;

import java.util.Comparator;
import java.util.TreeSet;

class Person1{
	private int id;
	private int score;
	Person1(){}
	Person1(int id, int score){
		this.id = id;
		this.score = score;
	}
	int getId() {
		return id;
	}
	@Override
	public String toString() {
		return "[id = " + id + ", score = " + score + "]";
	}
}

class Person1Comparator implements Comparator<Person1>{
	public int compare(Person1 o1, Person1 o2) {
		return o1.getId() - o2.getId();
	}
}

public class Code245 {

	public static void main(String[] args) {
		TreeSet<Person1> ts = new TreeSet<>(new Person1Comparator());
		ts.add(new Person1(4, 83));
		ts.add(new Person1(5, 90));
		ts.add(new Person1(2, 93));
		ts.add(new Person1(1, 88));
		ts.add(new Person1(3, 70));
		for(Person1 p : ts)
			System.out.println(p);
	}

}
