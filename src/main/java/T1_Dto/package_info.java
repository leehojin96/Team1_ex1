package T1_Dto;

public class package_info {

	String pk_num;
	String pk_name;
	String schedule;
	String  Departure;
	String Destination;
	int Price;
	String trv_place;
	String ht_key ;
	
	
	public String getPk_num() {
		return pk_num;
	}
	public void setPk_num(String pk_num) {
		this.pk_num = pk_num;
	}
	public String getPk_name() {
		return pk_name;
	}
	public void setPk_name(String pk_name) {
		this.pk_name = pk_name;
	}
	public String getSchedule() {
		return schedule;
	}
	public void setSchedule(String schedule) {
		this.schedule = schedule;
	}
	public String getDeparture() {
		return Departure;
	}
	public void setDeparture(String departure) {
		Departure = departure;
	}
	public String getDestination() {
		return Destination;
	}
	public void setDestination(String destination) {
		Destination = destination;
	}
	public int getPrice() {
		return Price;
	}
	public void setPrice(int price) {
		Price = price;
	}
	public String getTrv_place() {
		return trv_place;
	}
	public void setTrv_place(String trv_place) {
		this.trv_place = trv_place;
	}
	public String getHt_key() {
		return ht_key;
	}
	public void setHt_key(String ht_key) {
		this.ht_key = ht_key;
	}
	@Override
	public String toString() {
		return "package_info [pk_num=" + pk_num + ", pk_name=" + pk_name + ", schedule=" + schedule + ", Departure="
				+ Departure + ", Destination=" + Destination + ", Price=" + Price + ", trv_place=" + trv_place
				+ ", ht_key=" + ht_key + "]";
	}
	public package_info() {
		super();
	}
	public package_info(String pk_num, String pk_name, String schedule, String departure, String destination,
			int price, String trv_place, String ht_key) {
		
		this.pk_num = pk_num;
		this.pk_name = pk_name;
		this.schedule = schedule;
		this.Departure = departure;
		this.Destination = destination;
		this.Price = price;
		this.trv_place = trv_place;
		this.ht_key = ht_key;
	}
	public package_info(String pk_num) {
		super();
		this.pk_num = pk_num;
	}
	
	
	
}
