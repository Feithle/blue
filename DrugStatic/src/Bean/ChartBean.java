package Bean;

public class ChartBean {
	public String typename;
	public int typenumber;
	public String getTypename() {
		return typename;
	}
	public void setTypename(String typename) {
		this.typename = typename;
	}
	public int getTypenumber() {
		return typenumber;
	}
	public void setTypenumber(int typenumber) {
		this.typenumber = typenumber;
	}
	public ChartBean(String typename, int typenumber) {
		super();
		this.typename = typename;
		this.typenumber = typenumber;
	}
	public ChartBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
