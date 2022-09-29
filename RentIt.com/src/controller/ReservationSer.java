package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.ReservationBean;
import dao.ReservationDao;

/**
 * Servlet implementation class ReservationSer
 */
@WebServlet("/ReservationSer")
public class ReservationSer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReservationSer() {
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
		
		String service1= request.getParameter("service");
		String location =request.getParameter("location");
		String pickUpDate = request.getParameter("pickUpDate");
		String pickUpTime= request.getParameter("pickUpTime");
		String returnDate = request.getParameter("returnDate");
		String returnTime= request.getParameter("returnTime");
		String str = request.getParameter("vehicleId");
		int vehicleId= Integer.parseInt(str);
		String st = request.getParameter("customerId");
		int customerId= Integer.parseInt(st);
				
		
	   // float payment = Float.parseFloat(request.getParameter("payment"));
		
				
		ReservationBean resBean = new ReservationBean();
		
			resBean.setService(service1);
			resBean.setLocation(location);
			resBean.setPickUpDate(pickUpDate);
			resBean.setPickUpTime(pickUpTime);
			resBean.setReturnDate(returnDate);
			resBean.setReturnTime(returnTime);
			resBean.setVehicleId(vehicleId);
			resBean.setCustomerId(customerId);
			//resBean.setPayment(payment);
			
			ReservationDao resDao = new ReservationDao();
			
			String reservation = resDao.reservation(resBean);
			
				if(reservation.equals("SUCCESS")){
					response.sendRedirect("resReview.jsp");
					System.out.println("Reservation Successful");
					
				}
				else{
					request.setAttribute("errMessage", reservation);
					request.getRequestDispatcher("SignUp.jsp").forward(request, response);
				}
			
			

		
		
		
	}

}
