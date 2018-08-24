package com.record;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.MemberDTO;
import com.dto.RecordDTO;
import com.service.RecordService;

@WebServlet("/RecordIn")
public class RecordIn extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		MemberDTO dto = (MemberDTO) session.getAttribute("login");
		String nextPage = null;
		if (dto == null) {
			nextPage = "login.jsp";
			
		} else {
			nextPage = "Recordout";
			String playYear = request.getParameter("playYear");
			String playMonth = request.getParameter("playMonth");
			String playDay = request.getParameter("playDay");
			String maxDistance = request.getParameter("maxDistance");
			String hitBall = request.getParameter("hitBall");

			RecordDTO rdto = new RecordDTO();
			rdto.setUserid(dto.getUserid()); // dto.setUserid("aaa");
			rdto.setPlayYear(playYear);
			rdto.setPlayMonth(playMonth);
			rdto.setPlayDay(playDay);
			rdto.setMaxDistance(maxDistance);
			rdto.setHitBall(hitBall);
		

			RecordService service = new RecordService();
			int n = service.recordin(rdto);
			session.setAttribute("mRecord", rdto);
		}
		response.sendRedirect(nextPage);

		/*
		 * HttpSession session = request.getSession();
		 * 
		 * String userid = request.getParameter("userid"); 
		 * String playYear =request.getParameter("PlayYear"); 
		 * String playMonth = request.getParameter("PlayMonth"); 
		 * String playDay = request.getParameter("PlayDay");
		 * String maxDistance =request.getParameter("MaxDistance"); 
		 * String hitBall =request.getParameter("HitBall");
		 * 
		 * RecordDTO dto = new RecordDTO();//userid, playYear, playMonth, playDay,
		 * maxDistance, hitBall dto.setUserid(dto.getUserid()); //dto.setUserid("aaa");
		 * dto.setPlayYear(playYear);
		 * dto.setPlayMonth(playMonth);
		 * dto.setPlayDay(playDay); 
		 * dto.setMaxDistance(maxDistance);
		 * dto.setHitBall(hitBall);
		 * 
		 * RecordService service = new RecordService(); 
		 * int n = service.recordin(dto);
		 * //session.setAttribute("record", dto);
		 * 
		 * 
		 * response.sendRedirect("Recordout");
		 */
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
