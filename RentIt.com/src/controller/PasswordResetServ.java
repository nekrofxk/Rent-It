package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DBConnection;

/**
 * Servlet implementation class PasswordResetServ
 */
@WebServlet("/PasswordResetServ")
public class PasswordResetServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PasswordResetServ() {
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
		
		String securityQ = request.getParameter("securityQ");
		String username  = request.getParameter("username");
		
		DBConnection db = new DBConnection();
		Connection con = db.createConnection();
		
		try{
			String sql = "SELECT securityQ , username FROM customer WHERE securityQ = '" + securityQ  + "' AND username = '"+ username +"'  ";
			java.sql.Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()){
				
				String securityq = rs.getString("securityQ");
				String userName  = rs.getString("username");
					response.sendRedirect("PasswordReset2.jsp");
			}
			else{
				out.print("invalid answer");
			}
					
			
		}catch(SQLException ex){
			
			out.println("Error");
		}
	}
}
		
	


