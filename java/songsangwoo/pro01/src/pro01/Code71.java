package pro01;

public class Code71 {

	public static void main(String[] args) {
		int data[][] = new int[3][];		// 행의 길이만 명시
		data[0] = new int[4];
		data[1] = new int[5];
		data[2] = new int[3];
		
		data[0][0] = 0;
		data[0][1] = 1;
		data[0][2] = 2;
		data[0][3] = 3;
		data[1][0] = 4;
		data[1][1] = 5;
		data[1][2] = 6;
		data[1][3] = 7;
		data[1][4] = 8;
		data[2][0] = 9;
		data[2][1] = 10;
		data[2][2] = 11;
		
		for(int i=0; i<data.length; i++) {
			for(int j=0; j<data[i].length; j++)
				System.out.print(data[i][j] + " ");
			System.out.println();
		}
		
	}

}
