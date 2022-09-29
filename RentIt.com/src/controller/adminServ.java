package controller;

import java.io.IOException;

import java.io.PrintWriter;
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
import model.DBConnection;
import java.sql.*;

/**
 * Servlet implementation class adminServ
 */
@WebServlet("/adminServ")
public class adminServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PrintWriter stmt;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminServ() {
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
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		DBConnection db = new DBConnection();
		Connection con = db.createConnection();
		
		
		
		
		try{
			
			String sql = "SELECT * FROM admin WHERE admin_username = '" + username + "' AND admin_password = '"+password +"'  ";
			java.sql.Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			 
			
				while(rs.next()) {
					int adminID  = rs.getInt("admin_id");
				    String userName = rs.getString("admin_username");
				    
				    
				  	HttpSession session= request.getSession();
			        session.setAttribute("admin_id", adminID);
			        
			        System.out.println("adminID" + adminID);
			        System.out.println("welcome " + userName);
			        out.println("<a href='Logout.jsp'>Log out</a>");
			        response.sendRedirect("welcomeAdmin");
			    }
			        out.println("<a href='index.jsp'>Invalid password.Try again</a>");
			        
			        
			   		
		
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


