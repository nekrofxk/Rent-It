package model;
import java.sql.*;

public class DBConnection {
	
public Connection createConnection(){
		
		Connection con = null;
		String URL = "jdbc:mysql://localhost:8080/rentit_databasee";
		String username = "root";
		String password = "root";
		
		
		try{
			try{
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				con = DriverManager.getConnection(URL, username, password);
			}
			catch(ClassNotFoundException e){
				e.printStackTrace();
				System.out.print("This is not working");
			}
			//con = DriverManager.getConnection(URL, username, password);
			//System.out.println("Printing connection object"+con);
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return con;	
	}
}
