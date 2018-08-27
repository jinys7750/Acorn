package com.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.BoardDTO;
import com.exception.MyException;
import com.service.BoardService;

/**
 * Servlet implementation class BoardWriteServlet
 */
@WebServlet("/BoardReplyServlet")
public class BoardReplyServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		int boardGroup = Integer.parseInt(request.getParameter("boardGroup"));
		int boardSeq = Integer.parseInt(request.getParameter("boardSeq"));
		int boardLevel = Integer.parseInt(request.getParameter("boardLevel"));
		
		// jsp 쪽으로 다시 넘긴다 
		
		request.setAttribute("boardGroup", boardGroup);
		request.setAttribute("boardSeq", boardSeq);
		request.setAttribute("boardLevel", boardLevel);
		
		request.getRequestDispatcher("reply.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}





