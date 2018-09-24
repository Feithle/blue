package Bean;

import java.util.Date;

public class DrugBean {
	public String drugname;
	public String type;
	public int count;
	public Date datetime;
	public String getDrugname() {
		return drugname;
	}
	public void setDrugname(String drugname) {
		this.drugname = drugname;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public Date getDatetime() {
		return datetime;
	}
	public void setDatetime(Date datetime) {
		this.datetime = datetime;
	}
	public DrugBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DrugBean(String drugname, String type, int count, Date datetime) {
		super();
		this.drugname = drugname;
		this.type = type;
		this.count = count;
		this.datetime = datetime;
	}

	
}
