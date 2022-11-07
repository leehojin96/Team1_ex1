package T1_Service;

import T1_Dao.CusDao;
import T1_Dao.Customer;

public class CusService {
	
	CusDao dao;
	
	public CusService() {
		
	}

	public CusService(CusDao dao) {
		this.dao = dao;
	}
	
	public void insert(Customer customer) {
		dao.insert(customer);
	}
		   
	public int checkLogin(String id, String pw) {
	   int result = dao.loginCheck(id, pw);
	   return result;
	}
}
