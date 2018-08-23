package com.reservation;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.MemberDTO;
import com.service.ReservationService;

@WebServlet("/ReservationCheckServlet")
public class ReservationCheckServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String floor = request.getParameter("floor");
		String Date = request.getParameter("playDate");
		String playTime = request.getParameter("playTime");
		StringTokenizer sttz = new StringTokenizer(Date, ".");
		String playYear = sttz.nextToken();
		String playMonth = sttz.nextToken();
		String playDay = sttz.nextToken();
		ReservationService service = new ReservationService();
		HashMap<String, String> map = new HashMap<>();
		map.put("floor", floor);
		map.put("playYear", playYear);
		map.put("playMonth", playMonth);
		map.put("playDay", playDay);
		map.put("playTime", playTime);
		int result = service.checkReservation(map);
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		if(result==1) {
			out.print("이미 예약된 필드입니다.");
		}
		else  {
			out.print("예약 가능한 필드입니다.");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
