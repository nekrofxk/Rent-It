package dao;
import java.sql.*;
import java.util.*;
import model.DBConnection;
import bean.VehicleListBean;;

public class GetVehicleDb {
	
	//=====================================list vehicle=================================================================
	
	public List <VehicleListBean> getVehicles() throws Exception{
			List<VehicleListBean> getvehicles = new ArrayList<>();
			
			
			Connection con=null;
			Statement myStmt=null;
			ResultSet myRs =null;
			
			try{
				 con =DBConnection.createConnection();
				// create sql query
				String sql= "SELECT * FROM vehicle ORDER BY vehicle_id";
				myStmt= con.createStatement();
				//execute query
				myRs = myStmt.executeQuery(sql);
				
				//process results set
				while (myRs.next()){
					
					//retrive data from result set row
						int vehicleId = myRs.getInt("vehicle_id");
						String vehicleNo =myRs.getString("vehicleNo");
						String vehicleModel = myRs.getString("vehicleModel");
						int vehicleCapacity = myRs.getInt("vehicleCapacity");
						String driverName = myRs.getString("vehicleDriver");
						
						
					//create new vehicle object
						VehicleListBean tempvehicle=new VehicleListBean(vehicleId,vehicleNo, vehicleModel, vehicleCapacity, driverName);
						
					//add it to the list of vehicle
						
						getvehicles.add(tempvehicle);
						
				}
				
				return getvehicles;
			}
			
			finally{
				//close JDBC objects
				close(con,myStmt,myRs);
					
			}	
	}

	private static void close(Connection con, Statement myStmt, ResultSet myRs) {
		// TODO Auto-generated method stub
		
		try{
			if(myRs !=null){
				myRs.close();
			}
			
			if(myStmt !=null){
				myStmt.close();
			}
			
			if(con != null){
				con.close();
			}
		}
		catch(Exception exc){
			exc.printStackTrace();
		}
		
	}
	
	//=================================add vehicle into database=============================================================

	public static void addVehicles(VehicleListBean thevehicle) throws Exception{
		
		Connection con=null;
		PreparedStatement myStmt = null;
		
		try{
		
		//connection get
			con =DBConnection.createConnection();
			
		//create sql insert
			
			String sql="insert into vehicle"
						+ "(vehicle_id, vehicleNo, vehicleModel, vehicleCapacity, vehicleDriver)"
						+"values(null,?, ?, ?, ?)";
			myStmt =con.prepareStatement(sql);
			
			
		//set the param value
			myStmt.setString(1, thevehicle.getVehicleNo());
			myStmt.setString(2, thevehicle.getVehicleModel());
			myStmt.setInt(3, thevehicle.getVehicleCapacity());
			myStmt.setString(4, thevehicle.getDriverName());
			
			
		//exute sql insert
			myStmt.execute();
			
		}
		finally{
		//close jdbc 
			close(con,myStmt,null);
		
		}
		
		
		
	}

	//============================== load vehicle into update and vehicle(gettinfg vehicle id)==============================
	
	public static VehicleListBean getVehicle(String vehicleId) throws Exception {
			
		VehicleListBean thevehicle = null;
		
		Connection con = null;
		PreparedStatement myStmt = null;
		ResultSet myRs=null;
		int id;
		
		try{
			// covert vehicleid to int
				id = Integer.parseInt(vehicleId);
			
			//get connection to database
				con=DBConnection.createConnection();
			//create sql to get selected vehicle
				String sql= "select *from vehicle where vehicle_id =?";
			//create prepared statment
				myStmt = con.prepareStatement(sql);
			
			//set params
				myStmt.setInt(1, id);
			
			// execute startment
				myRs= myStmt.executeQuery();
			
			//retrive data from set
				if(myRs.next()){
					
					
					String vehicleNo = myRs.getString("vehicleNo");
					String vehicleModel = myRs.getString("vehicleModel");
					int vehicleCapacity = myRs.getInt("vehicleCapacity");
					String driverName = myRs.getString("vehicleDriver");
					
					
					//use the vehicleId during the construction
					thevehicle= new VehicleListBean (id,vehicleNo, vehicleModel,vehicleCapacity, driverName);
	
				}
				else{
					throw new Exception("Could not found id : " +id);
				}
				
		
		
		return thevehicle;
		}
		finally{
			//close the jdbc
			close(con,myStmt,myRs);
			
		}
	}
	
	//=============================update vehicle in database===============================================================
	
	
	public static void updateVehicles(VehicleListBean vehicleobj) throws Exception{
		Connection con = null;
		PreparedStatement myStmt = null;
		
		try{
		//get connection to database
		con=DBConnection.createConnection();
	//create sql to update vehicle
		String sql= "update vehicle "
				+"set vehicleNo =?, vehicleModel =?, vehicleCapacity=?, vehicleDriver=? "
				+"where vehicle_id=?";
	//create prepared statment
		myStmt = con.prepareStatement(sql);
		
	 //set the param value
		myStmt.setString(1, vehicleobj.getVehicleNo());
		myStmt.setString(2, vehicleobj.getVehicleModel());
		myStmt.setInt(3, vehicleobj.getVehicleCapacity());
		myStmt.setString(4, vehicleobj.getDriverName());
		myStmt.setInt(5, vehicleobj.getVehicleId());
		
	//exute sql insert
		myStmt.execute();
		}
		finally{
			close(con,myStmt,null);
		}
	}

	//===========================delete vehicles from data base function===================================================
	
	public static void deleteVehicle(String vehicleId) throws Exception {
		
		Connection con = null;
		PreparedStatement myStmt = null;
		
		
		try{
		//convert vehicleId to int
			int vehicle_Id=Integer.parseInt(vehicleId);
			
		//get connection to database
		con=DBConnection.createConnection();
	//create sql to delete vehicle
		String sql= "delete from vehicle where vehicle_id=? ";
	//create prepared statment
		myStmt = con.prepareStatement(sql);
	
	//setparame
		
		myStmt.setInt(1, vehicle_Id);
		
	//excute sql statment
		myStmt.execute();
		
		}
		finally{
			close(con,myStmt,null);
			
		}
	}

	
	
}
