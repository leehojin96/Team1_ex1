package T1_Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import T1_Dto.package_info;

public class PkDao {

	
	//연결정보
		String driver = "oracle.jdbc.driver.OracleDriver" ;
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String password="1234";

		
		Connection con= null;
		
		private void dbCon() {	
		
			try {
				Class.forName(driver);
				con  = DriverManager.getConnection(url, user, password);
				
				if( con != null) {
					System.out.println(" 연결성공");
				}
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
			
		}

		
		public ArrayList<package_info> pk() { //패미지목록메서드이름임(서비스에있음)
			ArrayList<package_info> list = new ArrayList<>();
			
			dbCon();
		
			String sql =" select *  from package_info " ;
		
			try {
			
			PreparedStatement pst  = con.prepareStatement(sql);
			ResultSet   rs  = pst.executeQuery();
			
			while( rs.next()) {
				//반복문통해서 디비에있는 조회된 것들을 순서[]대로 꺼내줌
				String pk_num = rs.getString(1);
				String pk_name = rs.getString(2);
				String schedule = rs.getString(3);
				String Departure = rs.getString(4);
				String Destination = rs.getString(5);
				int Price = rs.getInt(6);
				String trv_place = rs.getString(7);
				String ht_key = rs.getString(8);
				
				package_info pk = new  package_info();
				pk.setPk_num(pk_num);
				pk.setPk_name(pk_name);
				pk.setSchedule(schedule);
				pk.setDeparture(Departure);
				pk.setDestination(Destination);
				pk.setPrice(Price);
				pk.setTrv_place(trv_place);
				pk.setHt_key(ht_key);
			
			    list.add(pk);
				 
			}
						
			rs.close();
			pst.close();
			con.close();
		}
			
		 catch (SQLException e) {
			e.printStackTrace();
		}		
		 return list;		
		
	}
		
		// 패키지 1개 조회
		public package_info   pk( String pk_num) {
			 
			dbCon();
			String sql = " select * from package_info  where pk_num  = ? " ; 
			 package_info pk = null;
			try {
				PreparedStatement pst = con.prepareStatement(sql);
				pst.setString(1, pk_num);
				ResultSet  rs= pst.executeQuery();
				
				if(rs.next()) {
					String pk_num1 = rs.getString(1);
					String pk_name = rs.getString(2);
					String schedule = rs.getString(3);
					String Departure = rs.getString(4);
					String Destination = rs.getString(5);
					int Price = rs.getInt(6);
					String trv_place = rs.getString(7);
					String ht_key = rs.getString(8);
					
					pk = new package_info( pk_num, pk_name,schedule,Departure,Destination,Price,trv_place,ht_key );
				}	
				
				rs.close();
				pst.close();
				con.close();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 		
			return pk;
		}
		
		
		
}