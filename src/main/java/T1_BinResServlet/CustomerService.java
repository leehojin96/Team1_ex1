package T1_BinResServlet;

public class CustomerService {
	
	CustomerDao dao;
	
	public CustomerService() {
		// TODO Auto-generated constructor stub
	}
	public CustomerService(CustomerDao dao) {
		this.dao = dao;
	}
	
	public void insert(Customer cusomer) {
		dao.insert(cusomer);
	}

}