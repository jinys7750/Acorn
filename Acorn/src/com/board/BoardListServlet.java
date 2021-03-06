package com.board;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.MemberDTO;
import com.dto.PageDTO;
import com.exception.MyException;
import com.service.BoardService;

/**
 * Servlet implementation class BoardListServlet
 */
@WebServlet("/BoardListServlet")
public class BoardListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		MemberDTO dto = (MemberDTO) session.getAttribute("login");
		String nextPage = null;

		if (dto == null) {
			nextPage = "login.jsp";
		} else {
			// list.jsp에서 1 2 3 4
			String curPage = request.getParameter("curPage");
			if (curPage == null) {
				curPage = "1";
			}
			String searchName = request.getParameter("searchName");
			String searchValue = request.getParameter("searchValue");
			HashMap<String, String> map = new HashMap<>();
			map.put("searchName", searchName);
			map.put("searchValue", searchValue);
			BoardService service = new BoardService();
			nextPage = "board.jsp";
			PageDTO list = service.page(Integer.parseInt(curPage), map);
			session.setAttribute("page", list);
		}
		response.sendRedirect(nextPage);
	}// end

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
