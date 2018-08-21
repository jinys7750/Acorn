package com.member;

import java.io.IOException;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.MemberDTO;
import com.service.MemberService;

import sun.util.locale.StringTokenIterator;

@WebServlet("/MemberRegisterServlet")
public class MemberRegisterServlet extends HttpServlet {
	StringTokenizer sttz_Phone, sttz_Email;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nextPage = "404.jsp";
		String userid = request.getParameter("userid");
		String passwd = request.getParameter("passwd");
		String username = request.getParameter("username");
		String post = request.getParameter("post");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		// phone number parsing
		sttz_Phone = new StringTokenizer(phone, "-");
		String phone1 = sttz_Phone.nextToken();
		String phone2 = sttz_Phone.nextToken();
		String phone3 = sttz_Phone.nextToken();
		sttz_Email = new StringTokenizer(email, "@");
		String email1 = sttz_Email.nextToken();
		String email2 = sttz_Email.nextToken();
		MemberDTO mdto = new MemberDTO(userid, username, passwd, email1, email2, post, addr1, addr2, phone1, phone2, phone3, null);
		MemberService service = new MemberService();
		int result = service.register(mdto);
		if(result==1) 
			nextPage="registerSuccess.jsp";
		response.sendRedirect(nextPage);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
