package com.reservation;

import java.io.IOException;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.MemberDTO;
import com.dto.ReservationDTO;
import com.service.ReservationService;

@WebServlet("/ReservationServlet")
public class ReservationServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String nextPage = "";
		MemberDTO mdto = (MemberDTO) session.getAttribute("login");
		if (mdto == null) {
			nextPage = "login.jsp";
		} else {
			String date = request.getParameter("reserve_date");
			StringTokenizer sttz = new StringTokenizer(date, ".");
			ReservationService service = new ReservationService();
			String userid = request.getParameter("userid");
			String username = request.getParameter("username");
			String floor = request.getParameter("floor");
			String fieldNum = "a"; // юс╫ц
			String playYear = sttz.nextToken();
			String playMonth = sttz.nextToken();
			String playDay = sttz.nextToken();
			String playTime = request.getParameter("reserve_time");
			String reserve_passwd = request.getParameter("reserve_passwd");
			ReservationDTO rdto = new ReservationDTO(userid, username, floor, fieldNum, playYear, playMonth, playDay,
					playTime, reserve_passwd);
			int result = service.addReservation(rdto);
			if (result != 0)
				nextPage = "reservationSuccess.jsp";
			else {
				nextPage = "404.jsp";
			}
		}
		response.sendRedirect(nextPage);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
