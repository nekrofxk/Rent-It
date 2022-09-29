package dao;

import model.DBConnection;
import bean.RegisterBean;
import java.sql.*;

public class RegisterDao {

	public String register(RegisterBean regBean){
		String username 		= regBean.getUsername();
		String password 		= regBean.getPassword();
		String Email    		= regBean.getEmail();
		String nic				= regBean.getNic();
		String address			= regBean.getAddress();
		String contactNo		= regBean.getContactNo();
		String fname   			= regBean.getFname();
		String lname    		= regBean.getLname();
		String securityQ		= regBean.getSecurityQ();
		String newPassword		= regBean.getNewPassword();
		
		
		Connection con = DBConnection.createConnection();
		PreparedStatement preparedStatement = null;
		
		try{
			
			String sql = "insert into customer(fname, lname,email, nic, address, contactNo, username, password, securityQ) values(?,?,?,?,?,?,?,?,?)";
			
			preparedStatement = con.prepareStatement(sql);
			
			preparedStatement.setString(1, fname);
			preparedStatement.setString(2, lname);
			preparedStatement.setString(3, Email);
			preparedStatement.setString(4, nic);
			preparedStatement.setString(5, address);
			preparedStatement.setString(6, contactNo);
			preparedStatement.setString(7, username);
			preparedStatement.setString(8, password);
			preparedStatement.setString(9, securityQ);
		
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
