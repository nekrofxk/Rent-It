package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.RegisterBean;
import dao.RegisterDao;

/**
 * Servlet implementation class SignUpServ
 */
@WebServlet("/SignUpServ")
public class SignUpServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpServ() {
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
		
		String fname= request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email = request.getParameter("email");
		String nic = request.getParameter("nic");
		String address = request.getParameter("address");
		String contactNo = request.getParameter("contactNo");
		String username = request.getParameter("username");
		String password= request.getParameter("password");
		String securityQ = request.getParameter("securityQ");
		
		RegisterBean regBean = new RegisterBean();
		
			regBean.setFname(fname);
			regBean.setLname(lname);
			regBean.setEmail(email);
			regBean.setNic(nic);
			regBean.setAddress(address);
			regBean.setContactNo(contactNo);
			regBean.setUsername(username);
			regBean.setPassword(password);
			regBean.setSecurityQ(securityQ);
			
		RegisterDao regDao = new RegisterDao();
		
			String register = regDao.register(regBean);
			
				if(register.equals("SUCCESS")){
					response.sendRedirect("index.jsp");
					System.out.println("Welcome");
					
				}
				else{
					request.setAttribute("errMessage", register);
					//request.getRequestDispatcher("SignUp.jsp").forward(request, response);
				}
}

}
