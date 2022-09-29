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
import javax.servlet.http.HttpSession;

import model.DBConnection;

/**
 * Servlet implementation class PasswordResetServ2
 */
@WebServlet("/PasswordResetServ2")
public class PasswordResetServ2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PasswordResetServ2() {
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
			String newPassword = request.getParameter("newPassword");
			String conpass=request.getParameter("conpass");
			DBConnection db = new DBConnection();
			Connection con = db.createConnection();
			
			String pass="";
		
			try{
				
				java.sql.Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery("select * from customer where username='"+ username +"'");
				
				while(rs.next()){
					username = rs.getString(8);
					pass	=	rs.getString(9);
					
				} 
				System.out.println(username+ " "+pass);
					if(username.equals(username)){
						java.sql.Statement st1 = con.createStatement();
						int i = st1.executeUpdate("update customer set password='"+ newPassword +"' where username='"+ username +"'");
						out.println("Password changed successfully");
						st1.close();
						con.close();
						response.sendRedirect("index.jsp");
					}
					else{
						out.println("Invalid username");
					}
			}catch(Exception e){
				out.println(e);
		}
	}
}
		