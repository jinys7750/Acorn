package com.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.MemberDTO;
import com.service.MemberService;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nextPage = "";
		MemberService service = new MemberService();
		String userid = request.getParameter("userid");
		String passwd = request.getParameter("passwd");
		MemberDTO dto = service.login(userid, passwd);
		HttpSession session = request.getSession();
		if (dto != null) {
			System.out.println(dto);
			nextPage = "index.jsp";
		} else {
			System.out.println("일치 아이디 x");
			nextPage = "login.jsp";
		}
		response.sendRedirect(nextPage);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
