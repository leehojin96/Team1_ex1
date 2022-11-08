package T1_Dao;

public class Res {

	String res_code;
	String id;
	String pk_num;
	int price;
	int persons;
	
	public String getRes_code() {
		return res_code;
	}
	public void setRes_code(String res_code) {
		this.res_code = res_code;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPk_num() {
		return pk_num;
	}
	public void setPk_num(String pk_num) {
		this.pk_num = pk_num;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getPersons() {
		return persons;
	}
	public void setPersons(int persons) {
		this.persons = persons;
	}
	
	public Res(String res_code, String id, String pk_num, int price, int persons) {
		super();
		this.res_code = res_code;
		this.id = id;
		this.pk_num = pk_num;
		this.price = price;
		this.persons = persons;
	}
	
	@Override
	public String toString() {
		return "Res [res_code=" + res_code + ", id=" + id + ", pk_num=" + pk_num + ", price=" + price + ", persons="
				+ persons + "]";
	}
	
}
