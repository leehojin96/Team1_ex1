package T1_Dto;

public class package_info {

	String pk_num;
	String pk_name;
	String schedule;
	String  Departure;
	String Destination;
	int Price;
	String trv_place;
	String hotel_name;
	String flight_num;
	String dep_date;
	String dep_time;
	String des_date;
	String des_time;
	String flight_time;
	String airline;
	String alrline_class;
	String dep_place;
	String des_place;
	String ht_key;
	String ht_name;
	String room_type;
	String amenities;
	String ht_offers;
	String check_time;
	String ht_ad;
	
	public package_info() {
		// TODO Auto-generated constructor stub
	}

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



	public String getHotel_name() {
		return hotel_name;
	}



	public void setHotel_name(String hotel_name) {
		this.hotel_name = hotel_name;
	}



	public String getFlight_num() {
		return flight_num;
	}



	public void setFlight_num(String flight_num) {
		this.flight_num = flight_num;
	}



	public String getDep_date() {
		return dep_date;
	}



	public void setDep_date(String dep_date) {
		this.dep_date = dep_date;
	}



	public String getDep_time() {
		return dep_time;
	}



	public void setDep_time(String dep_time) {
		this.dep_time = dep_time;
	}



	public String getDes_date() {
		return des_date;
	}



	public void setDes_date(String des_date) {
		this.des_date = des_date;
	}



	public String getDes_time() {
		return des_time;
	}



	public void setDes_time(String des_time) {
		this.des_time = des_time;
	}



	public String getFlight_time() {
		return flight_time;
	}



	public void setFlight_time(String flight_time) {
		this.flight_time = flight_time;
	}



	public String getAirline() {
		return airline;
	}



	public void setAirline(String airline) {
		this.airline = airline;
	}



	public String getAlrline_class() {
		return alrline_class;
	}



	public void setAlrline_class(String alrline_class) {
		this.alrline_class = alrline_class;
	}



	public String getDep_place() {
		return dep_place;
	}



	public void setDep_place(String dep_place) {
		this.dep_place = dep_place;
	}



	public String getDes_place() {
		return des_place;
	}



	public void setDes_place(String des_place) {
		this.des_place = des_place;
	}



	public String getHt_key() {
		return ht_key;
	}



	public void setHt_key(String ht_key) {
		this.ht_key = ht_key;
	}



	public String getHt_name() {
		return ht_name;
	}



	public void setHt_name(String ht_name) {
		this.ht_name = ht_name;
	}



	public String getRoom_type() {
		return room_type;
	}



	public void setRoom_type(String room_type) {
		this.room_type = room_type;
	}



	public String getAmenities() {
		return amenities;
	}



	public void setAmenities(String amenities) {
		this.amenities = amenities;
	}



	public String getHt_offers() {
		return ht_offers;
	}



	public void setHt_offers(String ht_offers) {
		this.ht_offers = ht_offers;
	}



	public String getCheck_time() {
		return check_time;
	}



	public void setCheck_time(String check_time) {
		this.check_time = check_time;
	}



	public String getHt_ad() {
		return ht_ad;
	}



	public void setHt_ad(String ht_ad) {
		this.ht_ad = ht_ad;
	}



	public package_info(String pk_num, String pk_name, String schedule, String departure, String destination, int price,
			String trv_place, String hotel_name, String flight_num, String dep_date, String dep_time, String des_date,
			String des_time, String flight_time, String airline, String alrline_class, String dep_place,
			String des_place, String ht_key, String ht_name, String room_type, String amenities, String ht_offers,
			String check_time, String ht_ad) {
		super();
		this.pk_num = pk_num;
		this.pk_name = pk_name;
		this.schedule = schedule;
		Departure = departure;
		Destination = destination;
		Price = price;
		this.trv_place = trv_place;
		this.hotel_name = hotel_name;
		this.flight_num = flight_num;
		this.dep_date = dep_date;
		this.dep_time = dep_time;
		this.des_date = des_date;
		this.des_time = des_time;
		this.flight_time = flight_time;
		this.airline = airline;
		this.alrline_class = alrline_class;
		this.dep_place = dep_place;
		this.des_place = des_place;
		this.ht_key = ht_key;
		this.ht_name = ht_name;
		this.room_type = room_type;
		this.amenities = amenities;
		this.ht_offers = ht_offers;
		this.check_time = check_time;
		this.ht_ad = ht_ad;
	}

	@Override
	public String toString() {
		return "package_info [pk_num=" + pk_num + ", pk_name=" + pk_name + ", schedule=" + schedule + ", Departure="
				+ Departure + ", Destination=" + Destination + ", Price=" + Price + ", trv_place=" + trv_place
				+ ", hotel_name=" + hotel_name + ", flight_num=" + flight_num + ", dep_date=" + dep_date + ", dep_time="
				+ dep_time + ", des_date=" + des_date + ", des_time=" + des_time + ", flight_time=" + flight_time
				+ ", airline=" + airline + ", alrline_class=" + alrline_class + ", dep_place=" + dep_place
				+ ", des_place=" + des_place + ", ht_key=" + ht_key + ", ht_name=" + ht_name + ", room_type="
				+ room_type + ", amenities=" + amenities + ", ht_offers=" + ht_offers + ", check_time=" + check_time
				+ ", ht_ad=" + ht_ad + "]";
	}

	public package_info(String pk_num) {
		super();
		this.pk_num = pk_num;
	}
	
}