package pro01;

public class Code51 {

	public static void main(String[] args) {
		int score = 80;
		char grade;
		
		switch(score) {
		case 90: 
			grade = 'A';
			break;
		case 80:
			grade = 'B';
			break;
		case 70:
			grade = 'C';
			break;
		default:
			grade = 'D';
			break;
		}
		System.out.println("grade : " + grade);
		
	}

}
// switch는 선택문 (조건문x) / switch가 if 보다 빠름 / 대소비교는 if (switch 불가)