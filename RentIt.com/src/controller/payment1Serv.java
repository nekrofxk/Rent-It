package controller;

import bean.payment1Bean;
import dao.payment1Dao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class payment1Serv
 */
@WebServlet("/payment1Serv")
public class payment1Serv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public payment1Serv() {
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
		String str= request.getParameter("customerId");
		int customerId= Integer.parseInt(str);
		String st=request.getParameter("reservationId");
		int reservationId=Integer.parseInt(st);
		String bankname = request.getParameter("bankname");
		String cardname = request.getParameter("cardname");
		String cardnumber = request.getParameter("cardnumber");
		String r = request.getParameter("price");
		float price = Float.parseFloat(r);
		
		payment1Bean payment1Bean = new payment1Bean(reservationId, customerId, bankname, cardname, cardnumber, price);
		
		
		payment1Bean.setBankname(bankname);
		payment1Bean.setCardname(cardname);
		payment1Bean.setCardnumber(cardnumber);
		payment1Bean.setCustomerId(customerId);
		payment1Bean.setReservationId(reservationId);
		
		payment1Bean.setPrice(price);
		
		payment1Dao payment1Dao = new payment1Dao();
		String payment1 = payment1Dao.payment1(payment1Bean);
		
		if(payment1.equals("Success")){
			response.sendRedirect("payment1_respondtest.jsp");
			System.out.println("Hello World");
		}
		else{
			request.setAttribute("error occured", payment1);
			request.getRequestDispatcher("payment1.html").forward(request, response);;
		}
		
		
	}

}
