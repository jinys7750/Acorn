package com.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.BoardDTO;
import com.exception.MyException;
import com.service.BoardService;

/**
 * Servlet implementation class BoardRetrieveServlet
 */
@WebServlet("/BoardRetrieveServlet")
public class BoardRetrieveServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String num = request.getParameter("num");
		BoardService service = new BoardService();
		String nextPage = "retrieve.jsp";
		BoardDTO dto = service.selectByNum(Integer.parseInt(num));
		session.setAttribute("dto", dto);
		response.sendRedirect(nextPage);
	}// end

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
