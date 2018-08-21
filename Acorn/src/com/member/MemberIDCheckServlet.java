package com.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.MemberService;

@WebServlet("/MemberIDCheckServlet")
public class MemberIDCheckServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String mesg = "사용할 수 있는 아이디입니다.";
		MemberService service = new MemberService();
		String userid = request.getParameter("userid");
		int result = service.idCheck(userid);
		System.out.println(result);
		if (result == 1)
			mesg = "아이디 중복";
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(mesg);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
