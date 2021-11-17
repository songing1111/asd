package pro01;

public class Code73 {

	public static void main(String[] args) {
		double[] score = {90.5, 88.3, 70.8, 67.2, 92.4, 80.7};
		double total = 0.0;
		double average;
		
		for (double s : score)
			total += s;
		average = total / score.length;
		System.out.println("average : " + average);
	}

}
