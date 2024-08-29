package div06_mission;

public class Cart {

	int index;
	String name;
	int price;
	int num;
	
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	
	public Cart(int index, String name, int price, int num) {
		super();
		this.index = index;
		this.name = name;
		this.price = price;
		this.num = num;
	}
	public Cart() {
		super();
	}
	
	
}
