package pro03;

import java.util.LinkedList;
import java.util.Queue;

public class Code239 {

	public static void main(String[] args) {
		Queue<Integer> q = new LinkedList<Integer>();
		q.add(10);
		q.add(20);
		q.add(30);
		Integer data = q.poll();
		System.out.println("You polled : " + data);
		q.add(40);
		
		while(!q.isEmpty())
			System.out.println(q.poll());
	}

}
