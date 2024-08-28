package div01_jsp.bean.menu;

public class Coffee extends Menu {

	private String beans;

	public Coffee(String name, int price, String beans) {
		super(name, price);
		this.beans = beans;
	}


	public String getBeans() {
		return beans;
	}


	public void setBeans(String beans) {
		this.beans = beans;
	}


	@Override
	public void printInfo() {
		System.out.print("메뉴=" + getName());
		System.out.print(" | 가격=" + getPrice());
		System.out.println(" | 원두=" + beans);
	}
}
