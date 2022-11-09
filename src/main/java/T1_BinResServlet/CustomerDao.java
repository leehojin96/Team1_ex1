package T1_BinResServlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import T1_BinResServlet.Customer;

public class CustomerDao {

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "system";
	String password = "1234";
	Connection con = null;
	
	private void dbCon() {
		
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.print("연결성공");
		
		String sql = "select * from res_info";
		PreparedStatement pst;
		try {
			pst = con.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	
	public void insert(Customer customer) {
		dbCon();
		String sql = "insert into res_info values(  res_seq.nextval ,?,?,?,?,?,?)";
		PreparedStatement pst;
		try {
			pst = con.prepareStatement(sql);		 
			pst.setString(1, customer.getPay_code());
			pst.setString(2, customer.getName());
			pst.setString(3, customer.getEng_name());
			pst.setInt(4, customer.getBirth());
			pst.setString(5, customer.getPhone());
			pst.setString(6, customer.getGender());
			pst.executeUpdate();
			
			pst.close();
			con.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	
	public static void main(String[] args) {
		CustomerDao  c = new CustomerDao();
		Customer cu = new Customer( "dkdk","asdf","aaa","aaa",10,"aaa","aaa");
		c.insert(cu);
		
	}
	
	
}
