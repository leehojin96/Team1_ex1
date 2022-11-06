package T1_Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CusDao {

	// db작업 
	// 연결정보
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "system";
	String password = "1234";
	Connection con = null; // Connection(전역변수) 초기화
			
	// db연결
	private void dbCon() {
		
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.print("연결 성공");
		
	}
	
	// 회원가입
	public void insert(Customer customer) {
		dbCon();
		String sql = "insert into cus_info values(?,?,?,?,?,?,?)";
		PreparedStatement pst;
		try {
			pst = con.prepareStatement(sql);
			pst.setString(1, customer.getName());
			pst.setString(2, customer.getId());
			pst.setString(3, customer.getPw());
			pst.setString(4, customer.getPhone());
			pst.setString(5, customer.getBirth());
			pst.setString(6, customer.getGender());
			pst.setInt(7, 0);
			pst.executeQuery();
			
			pst.close();
			con.close();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
	
	
	
}
