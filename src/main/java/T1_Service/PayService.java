package T1_Service;

import java.util.ArrayList;

import T1_Dao.Pay;
import T1_Dao.PayDao;

public class PayService {

	PayDao dao;
	
	public PayService() {}
	
	public PayService(PayDao dao) {
		this.dao = dao;
	}
	public ArrayList<Pay> cus_paylist(String loginid) {
		ArrayList<Pay> list = new ArrayList<>();  
		list = this.dao.cus_paylist(loginid);
		return list;
	}
	
}
