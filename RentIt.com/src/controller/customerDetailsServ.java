package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.DBConnection;
import java.sql.*;
/**
 * Servlet implementation class customerDetailsServ
 */
@WebServlet("/customerDetailsServ")
public class customerDetailsServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PrintWriter stmt;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public customerDetailsServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		String customer_id = request.getParameter("customer_id");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String nic = request.getParameter("nic");
		String address = request.getParameter("address");
		String contactNo = request.getParameter("contactNo");
		
		
		DBConnection db = new DBConnection();
		Connection con = db.createConnection();

try{
			
			String sql = "SELECT * FROM customer";
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);			 
			
				while(rs.next()) {
					int customerID  = rs.getInt("customer_id");
				    String fname1 = rs.getString("fname");
				    String lname1 = rs.getString("lname");
				    String email1 = rs.getString("email");
				    String nic1 = rs.getString("nic");
				    String address1 = rs.getString("address");
				    String contactNo1 = rs.getString("contactNo");
				  	
			        
				    RequestDispatcher dispatcher = request.getRequestDispatcher("/customerDetails.jsp");
			 		dispatcher.forward(request, response);
			 		
			    }
			        
			        
			   		
		
	    }catch(SQLException ex){
		Logger.getLogger(LoginServ.class.getName()).log(Level.SEVERE, null, ex);
	    }
		finally {		
			try {
				stmt.close();
				con.close();
			}
			catch (Exception ignore) {
			}
		}
			
			

		
	}

}
