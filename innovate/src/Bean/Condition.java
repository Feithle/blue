package Bean;

public class Condition {
	public String tec;//技术领域
	public String platleve;//级别
	public String relycomtype;//依托单位类型
	public String getTec() {/**************构造*******************/
		return tec;
	}
	public void setTec(String tec) {
		this.tec = tec;
	}
	public String getPlatleve() {
		return platleve;
	}
	public void setPlatleve(String platleve) {
		this.platleve = platleve;
	}
	public String getRelycomtype() {
		return relycomtype;
	}
	public void setRelycomtype(String relycomtype) {
		this.relycomtype = relycomtype;
	}
	public Condition(String tec, String platleve, String relycomtype) {
		super();
		this.tec = tec;
		this.platleve = platleve;
		this.relycomtype = relycomtype;
	}
	public Condition() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
