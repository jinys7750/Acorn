package com.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dao.BoardDAO;
import com.dto.BoardDTO;

import com.dto.PageDTO;
import com.exception.MyException;
import com.mybatis.MybatisTemplate;

public class BoardService {
	
	
	// 게시글 가져오는 애 
	public List<BoardDTO> list() throws MyException{
		SqlSession session = MybatisTemplate.openSession();
		BoardDAO dao = new BoardDAO();
		List<BoardDTO> list = null;
		try {
			list = dao.list(session);
		}catch(Exception e) {
			e.printStackTrace();
			throw new MyException("list 예외발생");
		}finally {
			session.close();
		}
		return list;
	}//end list()
	
	
	
	public void boardWrite(BoardDTO dto)throws MyException {
		SqlSession session = MybatisTemplate.openSession();
		BoardDAO dao = new BoardDAO();
		try {
			int n = dao.boardWrite(session, dto);
			if(n==1) {
				session.commit();
			}
		}catch(Exception e) {
			e.printStackTrace();
			throw new MyException("boardWrite 예외발생");
		}finally {
			session.close();
		}
		
	}//end boardWrite
	

	public BoardDTO selectByNum(int num)throws MyException {
		
		SqlSession session = MybatisTemplate.openSession();
		BoardDAO dao = new BoardDAO();
		BoardDTO dto = null;
		try {
			int n = dao.readCnt(session, num);
			if(n==1) session.commit();
			dto = dao.selectByNum(session, num);
		}catch(Exception e) {
			e.printStackTrace();
			throw new MyException("selectByNum 예외발생");
		}finally {
			session.close();
		}
		return dto;
	}//end selectByNum
	
	public void deleteByNum(int num)throws MyException {
		
		SqlSession session = MybatisTemplate.openSession();
		BoardDAO dao = new BoardDAO();
		try {
			int n = dao.deleteByNum(session, num);
			if(n==1) session.commit();
		}catch(Exception e) {
			e.printStackTrace();
			throw new MyException("deleteByNum 예외발생");
		}finally {
			session.close();
		}
		
	}//end deleteByNum
	
	public void updateByNum(BoardDTO dto)throws MyException {
		
		SqlSession session = MybatisTemplate.openSession();
		BoardDAO dao = new BoardDAO();
		
		try {
			dao.updateByNum(session, dto);
			session.commit();
		}catch(Exception e) {
			e.printStackTrace();
			throw new MyException("updateByNum 예외발생");
		}finally {
			session.close();
		}
		
	}


	public List<BoardDTO> search(HashMap<String, String> map) throws MyException{
	SqlSession session = MybatisTemplate.openSession();
	BoardDAO dao = new BoardDAO();
	List<BoardDTO> list = null;
		try {
		list = dao.search(session,map);
			}catch(Exception e) {
		e.printStackTrace();
			throw new MyException("search 예외발생");
		} finally {
		session.close();
		}
	return list;
	}//end list()

     public PageDTO page( int curPage, HashMap<String, String> map ) throws MyException{
    	 SqlSession session = MybatisTemplate.openSession();
 		BoardDAO dao = new BoardDAO();
 		PageDTO list = null;
 		try {
 			list = dao.page(session, curPage, map);
 		}catch(Exception e) {
 			e.printStackTrace();
 			throw new MyException("list 예외발생");
 		}finally {
 			session.close();
 		}
 		return list;
	  }



	public void replyInsert(BoardDTO bdto) throws MyException {
		// TODO Auto-generated method stub
		SqlSession session = MybatisTemplate.openSession();
		BoardDAO dao = new BoardDAO();
			try {
				int n = dao.replyInsert(session, bdto);
				if(n==1) {
					session.commit();
				}
			}catch(Exception e) {
				e.printStackTrace();
				throw new MyException("replyInsert 예외발생");
			}finally {
				session.close();
			}
	
	}
	  
	
}











