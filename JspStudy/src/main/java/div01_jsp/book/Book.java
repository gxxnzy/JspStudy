package div01_jsp.book;

import java.text.DecimalFormat;


public class Book {
	private String category;
	private String title;
	private String author;
	private String publisher;
	private int price;
	
	
	
	public Book() {
		super();
	}



	public void printInfo() {
		DecimalFormat df = new DecimalFormat("#,###");
		
		System.out.println("분야="+category);
		System.out.println("제목="+title);
		System.out.println("저자="+author);
		System.out.println("출판사="+publisher);
		System.out.println("가격="+df.format(price));
		
	}



	public Book(String category, String title, String author, String publisher, int price, String Isbn) {
		super();
		this.category = category;
		this.title = title;
		this.author = author;
		this.publisher = publisher;
		this.price = price;
	}



	public Book(String[] book) {
		this.category = book[0];
		this.title = book[1];
		this.author = book[2];
		this.publisher = book[3];
		this.price = Integer.parseInt(book[4]);
	}



	public String getCategory() {
		return category;
	}



	public void setCategory(String category) {
		this.category = category;
	}



	public String getTitle() {
		return title;
	}



	public void setTitle(String title) {
		this.title = title;
	}



	public String getAuthor() {
		return author;
	}



	public void setAuthor(String author) {
		this.author = author;
	}



	public String getPublisher() {
		return publisher;
	}



	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}



	public int getPrice() {
		return price;
	}



	public void setPrice(int price) {
		this.price = price;
	}



	
	
}