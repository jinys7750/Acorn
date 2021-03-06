package com.reservation;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.MemberDTO;
import com.dto.ReservationDTO;
import com.service.ReservationService;

@WebServlet("/ReservationListServlet")
public class ReservationListServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nextPage = "myreservation.jsp";
		ReservationService service = new ReservationService();
		HttpSession session = request.getSession();
		MemberDTO mdto = (MemberDTO) session.getAttribute("login");
		if (mdto == null) {
			nextPage = "login.jsp";
		} else {
			String userid = mdto.getUserid();
			List<ReservationDTO> list = service.reservationList(userid);
			session.setAttribute("reservelist", list);
		}
		// 리스트 include하는 페이지로 이동!!!!
		response.sendRedirect(nextPage);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
