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

import com.dto.ReservationDTO;
import com.service.ReservationService;

@WebServlet("/ReservationListServlet")
public class ReservationListServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nextPage = "";
		ReservationService service = new ReservationService();
		// ��¥���� ������ ������� �Ⱥ������ Ȯ���ϱ� ���� ����Ʈ ��������
		// Ķ������ ������ ��¥�� �ʿ���
		String playYear = request.getParameter("playYear");
		String playMonth = request.getParameter("playMonth");
		String playDay = request.getParameter("playDay");

		HashMap<String, String> map = new HashMap<>();
		map.put("playYear", playYear);
		map.put("playMonth", playMonth);
		map.put("playDay", playDay);
		List<ReservationDTO> list = service.reservationList(map);
		HttpSession session = request.getSession();
		session.setAttribute("reservationList", list);

		// ����Ʈ include�ϴ� �������� �̵�!!!!
		response.sendRedirect(nextPage);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
