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

@WebServlet("/Recordout")
public class Recordout extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		MemberDTO dto = (MemberDTO) session.getAttribute("login");
		String nextPage = null;
		if (dto == null) {
			nextPage = "login.jsp";
			
		} else {
			nextPage = "RankingOut";
			String userid = dto.getUserid();
			RecordService service = new RecordService();
			//List<RecordDTO> list = service.myRecord(userid);
			RecordDTO rdto = service.recordout(userid);
			session.setAttribute("mRecord", rdto);
		}
		
		response.sendRedirect(nextPage);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
