package com.reservation;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.MemberDTO;
import com.service.ReservationService;

@WebServlet("/ReservationCancelServlet")
public class ReservationCancelServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String nextPage = "ReservationListServlet";
		MemberDTO mdto = (MemberDTO) session.getAttribute("login");
		if (mdto == null) {
			nextPage = "login.jsp";
		} else {
			ReservationService service = new ReservationService();
			String playYear = (String) request.getParameter("playYear");
			String playMonth = (String) request.getParameter("playMonth");
			String playDay = (String) request.getParameter("playDay");
			String playTime = (String) request.getParameter("playTime");
			String reserve_passwd = (String) request.getParameter("reserve_passwd");
			HashMap<String, String> map = new HashMap<>();
			map.put("playYear", playYear);
			map.put("playMonth", playMonth);
			map.put("playDay", playDay);
			map.put("playTime", playTime);
			map.put("reserve_passwd", reserve_passwd);
			int result = service.removeReservation(map); // 삭제할 때 뭐로 삭제할거냐,,, 년 월 일 시 비밀번호
		}
		response.sendRedirect(nextPage);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
