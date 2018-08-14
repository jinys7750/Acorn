package com.reservation;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.ReservationDTO;
import com.service.ReservationService;

@WebServlet("/ReservationServlet")
public class ReservationServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ReservationService service = new ReservationService();
		String userid = request.getParameter("userid");
		String username = request.getParameter("username");
		String floor = request.getParameter("floor");
		String fieldNum = request.getParameter("fieldNum");
		String playYear = request.getParameter("playYear");
		String playMonth = request.getParameter("playMonth");
		String playDay = request.getParameter("playDay");
		String playTime = request.getParameter("playTime");
		String passwd = request.getParameter("passwd");
		ReservationDTO rdto = new ReservationDTO(userid, username, floor, fieldNum, playYear, playMonth, playDay,
				playTime, passwd);
		int result = service.addReservation(rdto);
		if (result != 0) {
			response.sendRedirect("reservationSuccess.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
