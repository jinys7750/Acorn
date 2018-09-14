package com.record;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.MemberDTO;
import com.dto.ReservationDTO;
import com.service.RecordService;

@WebServlet("/playTimeOut")
public class playTimeOut extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		MemberDTO dto = (MemberDTO) session.getAttribute("login");
		String nextPage = null;
		if (dto == null) {
			nextPage = "login.jsp";

		} else {
			nextPage = "myplaytime.jsp";
			String userid = dto.getUserid();
			
			
			RecordService rservice = new RecordService();
			ReservationDTO pdto = rservice.playOut(userid);
			session.setAttribute("tout", pdto);
			

		}
		response.sendRedirect(nextPage);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
