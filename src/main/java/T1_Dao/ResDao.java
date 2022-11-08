<<<<<<< HEAD
package T1_Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ResDao {

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
		System.out.print("연결성공");
		
	}

	public ArrayList<Res> res(){
		
		ArrayList<Res> list = new ArrayList<>();
		dbCon();
		String sql = "select * from res_info";
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			
			while(rs.next()) {
				String res_code = rs.getString(1);
				String id = rs.getString(2);
				String pk_num = rs.getString(3);
				int price = rs.getInt(4);
				int persons = rs.getInt(5);
				
				Res res = new Res(res_code,id,pk_num,price,persons);
				list.add(res);				
				
			}
			
			rs.close();
			st.close();
			con.close();
			
		} catch (SQLException e) {
				e.printStackTrace();
		}
		return list;
	}
	
	// 테스트용 메인입니다.
	public static void main(String[] args) {
		
		ResDao  dao = new ResDao();		
		ArrayList<Res > list  = dao.res();

		for( Res res : list) {
			System.out.println(res);
		}
		
	}
}
=======
<<<<<<< HEAD
package T1_Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ResDao {

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
			
		}
}
=======
package T1_Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ResDao {

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
		System.out.print("연결성공");
		
	}

	public ArrayList<Res> res(){
		
		ArrayList<Res> list = new ArrayList<>();
		dbCon();
		String sql = "select * from res_info";
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			
			while(rs.next()) {
				String res_code = rs.getString(1);
				String id = rs.getString(2);
				String pk_num = rs.getString(3);
				int price = rs.getInt(4);
				int persons = rs.getInt(5);
			}
			
			rs.close();
			st.close();
			con.close();
			
		} catch (SQLException e) {
				e.printStackTrace();
		}
		return list;
	}
}
>>>>>>> branch 'master' of https://github.com/leehojin96/Team1_ex1.git
>>>>>>> refs/remotes/origin/master
