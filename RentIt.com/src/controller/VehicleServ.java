package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import bean.VehicleListBean;
import dao.GetVehicleDb;
/**
 * Servlet implementation class VehicleServ
 */
@WebServlet("/VehicleServ")
public class VehicleServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	GetVehicleDb vehicledb = new GetVehicleDb();
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	//==============================read and routing to method section===================================================	
		try{
			
			//read the data from vehicle form
				String theCommand=request.getParameter("command");
				
			//if the command is missing
				if(theCommand == null){
					theCommand="LIST";
				}
			//route to method
			switch (theCommand){
				case "LIST" : listVehicles(request,response);
								break;
					
				case "ADD" : addVehicles(request,response);
								break;
				
				case "LOAD": loadVehicle(request,response);
								break;
				case "UPDATE":updateVehicle(request,response);
								break;
								
				case "DELETE" : deleteVehicle(request,response);
								break;
					default: listVehicles(request,response);
								
					}
				}
			catch(Exception exc){
				throw new ServletException(exc);
			}
			
		}

	//===========================delete vehicles from data base function===================================================
	
		private void deleteVehicle(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
			// read the vehicle id from form data
				String vehicleId= request.getParameter("vehicleId");
			//delete vehicle from database{db util)
				GetVehicleDb.deleteVehicle(vehicleId);
			
			//send them back to vehicle list
				listVehicles(request,response);
						
						
	//=============================update vehicle in database===============================================================
				
	}

		private void updateVehicle(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
			//read vehicle info fro form data
				int vehiceId= Integer.parseInt(request.getParameter("vehicleId"));
				String vehicleNo = request.getParameter("vehicleNo");
				String vehicleModel = request.getParameter("vehicleModel");
				String str=request.getParameter("vehicleCapacity");
				int vehicleCapacity =Integer.parseInt(str);
				String driverName = request.getParameter("driverName");
			
			//cerate a new vehicle object
				VehicleListBean vehicleobj=new VehicleListBean(vehiceId, vehicleNo, vehicleModel, vehicleCapacity, driverName);
			
			//perform udate on database
			GetVehicleDb.updateVehicles(vehicleobj);
			
			//send them back to the vehiclels= list
			listVehicles(request,response);
			
	}

	//============================== load vehicle into update and vehicle(gettinfg vehicle id)==============================
		
		private void loadVehicle(HttpServletRequest request, HttpServletResponse response)throws Exception {
		
		// read the vehicle id from form data
			String vehicleId= request.getParameter("vehicleId");
		//get vehicle from database{db util)
			VehicleListBean theVehicle = GetVehicleDb.getVehicle(vehicleId);
		//place the vehicle in the request.getparam
			request.setAttribute("THE_VEHICLE", theVehicle);
		//send to jsp page
			RequestDispatcher dispatcher = request.getRequestDispatcher("/update-vehicle.jsp");
			dispatcher.forward(request, response);
	}
	
	//=================================add vehicle into database=============================================================
		
		private void addVehicles(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//read vehicle details from form
			String vehicleNo = request.getParameter("vehicleNo");
			String vehicleModel = request.getParameter("vehicleModel");
			String str=request.getParameter("vehicleCapacity");
			int vehicleCapacity =Integer.parseInt(str);
			String driverName = request.getParameter("driverName");
			
		//create a new vehicle object
			VehicleListBean thevehicle = new VehicleListBean(vehicleNo,vehicleModel,vehicleCapacity,driverName);
			
		//add the student to the  database
			GetVehicleDb.addVehicles(thevehicle);
			
		//send the new data to main page
			listVehicles(request,response);
	}
		
	//=====================================list vehicle=================================================================
		
		private void listVehicles(HttpServletRequest request, HttpServletResponse response) 
		throws Exception{
			GetVehicleDb vehicledb = new GetVehicleDb();
			
			//get vehicle from getvehicledb
			List<VehicleListBean> getvehicles = vehicledb.getVehicles();
			
			
			//add vehicles to the request
			
			request.setAttribute("VEHICLE_LIST", getvehicles);
			//send to jsp page(view)
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/vehicleList.jsp");
			dispatcher.forward(request, response);
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
