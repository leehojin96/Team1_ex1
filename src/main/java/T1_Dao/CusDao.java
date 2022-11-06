package T1_Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CusDao {

	// db작업 
	// 연결정보
	String driver = "oracle.jdbc.driver.OracleDriver" ;
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="system";
	String password="1234";
	Connection con = null; // Connection(전역변수) 초기화
			
	// controller -> service -> DAO -> view 순서
	
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
		
		String sql = "select * from cus_info";
		PreparedStatement pst;
		try {
			pst = con.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
}
