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
		public package_info pk(String pk_num) {
			
			dbCon();
			String sql = "select * from package_info p join flight_info f on p.departure = f.flight_num join flight_info f on p.destination = f.flight_num join hotel_info h on p.hotel_name = h.ht_key where pk_num = ?"; 
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
					String hotel_name = rs.getString(8);
					String flight_num = rs.getString(9);
					String dep_date = rs.getString(10);
					String dep_time = rs.getString(11);
					String des_date = rs.getString(12);
					String des_time = rs.getString(13);
					String flight_time = rs.getString(14);
					String airline = rs.getString(15);
					String alrline_class = rs.getString(16);
					String dep_place = rs.getString(17);
					String des_place = rs.getString(18);
					String ht_key = rs.getString(19);
					String ht_name = rs.getString(20);
					String room_type = rs.getString(21);
					String amenities = rs.getString(22);
					String ht_offers = rs.getString(23);
					String check_time = rs.getString(24);
					String ht_ad = rs.getString(25);
		
					pk = new package_info(pk_num,pk_name,schedule,Departure,Destination,Price,trv_place,hotel_name,flight_num,dep_date,dep_time,des_date,des_time,flight_time,airline,alrline_class,dep_place,des_place,ht_key,ht_name,room_type,amenities,ht_offers,check_time,ht_ad);
				}	
				
				rs.close();
				pst.close();
				con.close();
				
			} catch (SQLException e) {
				e.printStackTrace();
			} 		
			return pk;
		}
		
		public static void main(String[] args) {
			
			PkDao dao = new PkDao();
			package_info result = dao.pk(null);
			System.out.println(result + "정상작동");
				
		}
		
}