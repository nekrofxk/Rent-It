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
 * Servlet implementation class FleetServ
 */
@WebServlet("/FleetServ")
public class FleetServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
	GetVehicleDb vehicledb = new GetVehicleDb();
       
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//==============================read and routing to method section===================================================	
				try{
					
					//read the data from vehicle form
						String theCommand1=request.getParameter("command1");
						
					//if the command is missing
						if(theCommand1 == null){
							theCommand1="LIST";
						}
					//route to method
					switch (theCommand1){
						case "LIST" : listVehicles(request,response);
										break;
						
						case "LOAD": loadVehicle(request,response);
						break;
						
						
							default: listVehicles(request,response);
										
							}
						}
					catch(Exception exc){
						throw new ServletException(exc);
					}
	}
	
	private void loadVehicle(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// read the vehicle id from form data
					String vehicleId= request.getParameter("vehicleId");
					//get vehicle from database{db util)
					VehicleListBean theVehicle = GetVehicleDb.getVehicle(vehicleId);
				//place the vehicle in the request.getparam
					request.setAttribute("THE_VEHICLE", theVehicle);
					RequestDispatcher dispatcher = request.getRequestDispatcher("reservation.jsp");
					dispatcher.forward(request, response);
		
	}

	private void listVehicles(HttpServletRequest request, HttpServletResponse response) 
			throws Exception{
				GetVehicleDb vehicledb = new GetVehicleDb();
				
				//get vehicle from getvehicledb
				List<VehicleListBean> getvehicles = vehicledb.getVehicles();
				
				
				//add vehicles to the request
				
				request.setAttribute("VEHICLE_LIST", getvehicles);
				//send to jsp page(view)
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("fleet.jsp");
				dispatcher.forward(request, response);
				
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
