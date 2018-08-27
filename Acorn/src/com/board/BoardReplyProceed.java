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
@WebServlet("/BoardReplyProceed")
public class BoardReplyProceed extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		
		int num = Integer.parseInt(request.getParameter("num"));

		String title = request.getParameter("title");
		String writeday = request.getParameter("writeday");
		String userid = request.getParameter("userid");
		String content = request.getParameter("content");
		
		BoardDTO dto = new BoardDTO();
		dto.setNum(num);
		dto.setTitle(title);
		dto.setWriteday(writeday);
		dto.setuserid(userid);
		dto.setContent(content);
	
		dto.setBoardGroup(Integer.parseInt(request.getParameter("boardGroup")));
		dto.setBoardSeq(Integer.parseInt(request.getParameter("boardSeq")));
		dto.setBoardLevel(Integer.parseInt(request.getParameter("boardLevel")));
		
		BoardService bService = new BoardService();
		try {
			bService.replyInsert(dto);
			request.setAttribute("dto", dto);
			
		} catch (MyException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.getRequestDispatcher("BoardListServlet").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}





