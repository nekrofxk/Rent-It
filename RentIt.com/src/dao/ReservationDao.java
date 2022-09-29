package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.DBConnection;
import bean.ReservationBean;

public class ReservationDao {
	
	public String reservation(ReservationBean resBean){
		
		String service = resBean.getService();
		String location = resBean.getLocation();
		String pickUpDate = resBean.getPickUpDate();
		String pickUpTime = resBean.getPickUpTime();
		String returnDate = resBean.getReturnDate();
		String returnTime = resBean.getReturnTime();
		int vehicleId = resBean.getVehicleId();
		int customerId=resBean.getCustomerId();
		//float payment	  = resBean.getPayment();
		

		Connection con =DBConnection.createConnection();
		PreparedStatement preparedStatement =null;
		

		try{
			
			String sql = "insert into reservation(service, location, pickUpDate, pickUpTime, returnDate, returnTime,vehicle_id,customer_id) values(?,?,?,?,?,?,?,?)";
			
			preparedStatement = con.prepareStatement(sql); 
			preparedStatement.setString(1, service);
			preparedStatement.setString(2, location);
			preparedStatement.setString(3, pickUpDate);
			preparedStatement.setString(4, pickUpTime);
			preparedStatement.setString(5, returnDate);
			preparedStatement.setString(6, returnTime);
			preparedStatement.setInt(7, vehicleId);
			preparedStatement.setInt(8, customerId);
			//preparedStatement.setFloat(7, payment);

			
			int i = preparedStatement.executeUpdate();
			if(i!=0)
				return "SUCCESS";
		}
		catch(SQLException e){
			e.printStackTrace();
			System.out.println("cannot insert");
		}
		
		return "something went wrong";
	}
		

}
