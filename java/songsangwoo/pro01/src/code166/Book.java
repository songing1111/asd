package code166;

public abstract class Book {
	
	private int code;
	private String title;
	
	Book(){}
	Book(int code, String title){
		this.code = code;
		this.title = title;
	}
	
	int getCode() {
		return code;
	}
	String getTitle() {
		return title;
	}
	
	abstract void printInfo();
}
