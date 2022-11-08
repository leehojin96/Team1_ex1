package T1_Service;

import T1_Dao.PayDao;

public class PayService {

	PayDao dao;
	
	public PayService() {}
	
	public PayService(PayDao dao) {
		this.dao = dao;
	}
	
	
}
