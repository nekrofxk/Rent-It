package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import model.DBConnection;
import bean.payment1Bean;

public class payment1Dao {
	
	public String payment1(payment1Bean payment1Bean){
		String bankname = payment1Bean.getBankname();
		String cardname = payment1Bean.getCardname();
		String cardnumber = payment1Bean.getCardnumber();
		int customerId = payment1Bean.getCustomerId();
		float price = payment1Bean.getPrice();
		int reservationId=payment1Bean.getReservationId();
		Connection con = DBConnection.createConnection();
		PreparedStatement preparedStatement = null;
		
		try{
			
			
			
				String sql = "insert into payment(payment_id,bankname,cardname,cardnumber,price,customer_id,reservation_id) values(null,?,?,?,?,?,?)";
				preparedStatement = con.prepareStatement(sql);
				preparedStatement.setString(1, bankname);
				preparedStatement.setString(2, cardname);
				preparedStatement.setString(3, cardnumber);
				preparedStatement.setFloat(4, price);
				preparedStatement.setInt(5, customerId);
				preparedStatement.setInt(6, reservationId);
				
				int i = preparedStatement.executeUpdate();
				
				if (i!=0)
					return "Success" ;
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return "Something went wrong";
	}
	
}