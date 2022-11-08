package T1_Service;

import java.util.ArrayList;

import T1_Dao.PackageDao;
import T1_Dao.Pay;
import T1_Dao.PayDao;

public class PackageService {

	PackageDao dao;
	
	public PackageService() {}
	
	public PackageService(PackageDao dao) {
		this.dao = dao;
	}
	
	public ArrayList<T1_Dao.Package> packagelist() {
		ArrayList<T1_Dao.Package> list = new ArrayList<>();
		list = this.dao.packagelist();
		return list;
	}
	
}
