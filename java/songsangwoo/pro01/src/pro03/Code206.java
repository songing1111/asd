package pro03;

public class Code206 {

	//makeArray() �޼ҵ忡�� ���ܰ� �߻��ϴµ� ����ó���� ���� �ʾ���.
	//��� throws ������ �̿��ؼ� makeArray() �޼ҵ带 ȣ���ϴ� �޼ҵ忡��
	// ���� ó���� �ϵ��� ��.
	
	public static void makeArray() throws ArrayIndexOutOfBoundsException
	{
		int A[] = new int [3];
		
		A[0] = 10;
		A[1] = 20;
		A[2] = 30;
		A[3] = 40;
		A[4] = 50;
	}
	public static void main(String[] args) {
		System.out.println("main starts");
		try {
			makeArray();
		}
		catch(ArrayIndexOutOfBoundsException e) {
			System.out.println("Exceprion message : " + e.getMessage());
		}
		System.out.println("main ends");
	}

}
