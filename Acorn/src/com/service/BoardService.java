package com.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dao.BoardDAO;
import com.dto.BoardDTO;

import com.dto.PageDTO;

public class BoardService {
	
	
	// 게시글 가져오는 애 
	public List<BoardDTO> list() {
		SqlSession session = MySqlSessionFactory.getSession();
		BoardDAO dao = new BoardDAO();
		List<BoardDTO> list = null;
		try {
			list = dao.list(session);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return list;
	}//end list()
	
	
	
	public void boardWrite(BoardDTO dto){
		SqlSession session = MySqlSessionFactory.getSession();
		BoardDAO dao = new BoardDAO();
		try {
			int n = dao.boardWrite(session, dto);
			if(n==1) {
				session.commit();
			}
		}catch(Exception e) {
			e.printStackTrace();
		
		}finally {
			session.close();
		}
		
	}//end boardWrite
	

	public BoardDTO selectByNum(int num) {
		
		SqlSession session = MySqlSessionFactory.getSession();
		BoardDAO dao = new BoardDAO();
		BoardDTO dto = null;
		try {
			int n = dao.readCnt(session, num);
			if(n==1) session.commit();
			dto = dao.selectByNum(session, num);
		}catch(Exception e) {
			e.printStackTrace();
			
		}finally {
			session.close();
		}
		return dto;
	}//end selectByNum
	
	public void deleteByNum(int num) {
		
		SqlSession session = MySqlSessionFactory.getSession();
		BoardDAO dao = new BoardDAO();
		try {
			int n = dao.deleteByNum(session, num);
			if(n==1) session.commit();
		}catch(Exception e) {
			e.printStackTrace();
		
		}finally {
			session.close();
		}
		
	}//end deleteByNum
	
	public void updateByNum(BoardDTO dto) {
		
		SqlSession session = MySqlSessionFactory.getSession();
		BoardDAO dao = new BoardDAO();
		
		try {
			dao.updateByNum(session, dto);
			session.commit();
		}catch(Exception e) {
			e.printStackTrace();
		
		}finally {
			session.close();
		}
		
	}


	public List<BoardDTO> search(HashMap<String, String> map) {
	SqlSession session = MySqlSessionFactory.getSession();
	BoardDAO dao = new BoardDAO();
	List<BoardDTO> list = null;
		try {
		list = dao.search(session,map);
			}catch(Exception e) {
		e.printStackTrace();
			
		} finally {
		session.close();
		}
	return list;
	}//end list()

     public PageDTO page( int curPage, HashMap<String, String> map ) {
    	 SqlSession session = MySqlSessionFactory.getSession();
 		BoardDAO dao = new BoardDAO();
 		PageDTO list = null;
 		try {
 			list = dao.page(session, curPage, map);
 		}catch(Exception e) {
 			e.printStackTrace();
 	
 		}finally {
 			session.close();
 		}
 		return list;
	  }



	public void replyInsert(BoardDTO bdto)  {
		// TODO Auto-generated method stub
		SqlSession session = MySqlSessionFactory.getSession();
		BoardDAO dao = new BoardDAO();
			try {
				int n = dao.replyInsert(session, bdto);
				if(n==1) {
					session.commit();
				}
			}catch(Exception e) {
				e.printStackTrace();
			
			}finally {
				session.close();
			}
	
	}
	  
	
}











