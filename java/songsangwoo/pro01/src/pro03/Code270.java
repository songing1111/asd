package pro03;

enum Cards{
	HEART, CLUB, SPADE, DIAMOND
}

public class Code270 {

	public static void main(String[] args) {
		Cards cd;
		System.out.println("Print out all cards");
		System.out.println("-------------------");
		Cards all[] = Cards.values();
		for(Cards c : all)
			System.out.println(c);
		
		System.out.println("-------------------");
		cd = Cards.valueOf("CLUB");
		System.out.println("cd is " + cd);
	}

}
