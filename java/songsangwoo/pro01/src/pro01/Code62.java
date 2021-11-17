package pro01;

public class Code62 {

	public static void main(String[] args) {
		int row, col;
		row = 1;
		while (row <= 10){
			col = 1;
			while (col <= 10){
				System.out.print(col * row + " ");
				col++;
			}
			row++;
			System.out.println( );
		}
		

	}

}
