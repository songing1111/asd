package pro03;

import java.util.Map;
import java.util.TreeMap;
import java.util.Set;

class Person2{
	private String name; 
	private int score;
	
	Person2(String name, int score){
		this.name = name;
		this.score = score;
	}
	@Override
	public String toString() {
		return "(" + name + "," + score + ")";
	}
}

public class Code250 {

	public static void main(String[] args) {
		TreeMap<Integer, Person2> map = new TreeMap<>();
		map.put(3, new Person2("David", 80));
		map.put(1, new Person2("Bob", 90));
		map.put(2, new Person2("Alice", 88));
		map.put(5, new Person2("Cindy", 77));
		map.put(4, new Person2("Jenny", 93));
		
		Set<Integer> keySet = map.keySet();
		System.out.println(keySet);
		System.out.println("-------------------------");
		
		for(Map.Entry<Integer, Person2> e : map.entrySet()) {
			Integer key = e.getKey();
			Person2 value = e.getValue();
			System.out.println(key + " : " + value);
		}
		
		System.out.println("-------------------------");
		Person2 val = (Person2)map.get(3);
		System.out.print("key 3 -> ");
		System.out.println(val);
		}

}
