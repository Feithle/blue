package Value;
public class ValueMsg {
	int id;
	int price;
	String photo;
	String dishname;
	String material;
	String evaluate;
	String introduce;
	int Number;
	int SumPrice;
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getNumber() {
		return Number;
	}
	public void setNumber(int number) {
		Number = number;
	}
	public int getSumPrice() {
		return SumPrice;
	}
	public void setSumPrice(int sumPrice) {
		SumPrice = sumPrice;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public void setEvaluate(String evaluate) {
		this.evaluate = evaluate;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getDishname() {
		return dishname;
	}
	public void setDishname(String dishname) {
		this.dishname = dishname;
	}
	public String getMaterial() {
		return material;
	}
	public void setMaterial(String material) {
		this.material = material;
	}
	public String getEvaluate() {
		return evaluate;
	}
	
}
