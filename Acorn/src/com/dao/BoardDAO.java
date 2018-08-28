package com.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.dto.BoardDTO;

import com.dto.PageDTO;


public class BoardDAO {

	//1.목록보기
	public List<BoardDTO> list(SqlSession session){
      List<BoardDTO> list =session.selectList("selectAll");
	  return list;
	}//end list()
   //2. 글쓰기
	public int boardWrite(SqlSession session , BoardDTO dto) {
		int n = session.insert("boardWrite", dto);
		return n;
	}
	//3글 자세히 보기
	public BoardDTO selectByNum(SqlSession session , int num) {
		BoardDTO dto = session.selectOne("selectByNum", num);
		return dto;
	}
	public int readCnt(SqlSession session , int num) {
		int n = session.update("readCnt",num);
		return n;
	}

	//4. 글 삭제
	public int deleteByNum(SqlSession session , int num) {
		int n = session.delete("deleteByNum",num);
		return n;
	}
	//5. 글 수정
		public int updateByNum(SqlSession session , BoardDTO dto) {
			int n = session.update("updateByNum", dto);
			return n;
		}
		
		//6. 검색보기
		public List<BoardDTO> search(SqlSession session, HashMap<String, String> map){
	      List<BoardDTO> list =session.selectList("search", map);
		  return list;
		}//end list()	
		
		//7. 페이징 처리
		public PageDTO page(SqlSession session, int curPage , HashMap<String, String> map ){
			  
			  PageDTO dto = new PageDTO();
			  
			  int sIndex = (curPage - 1)* PageDTO.getPerPage();
		      int length  = PageDTO.getPerPage();
			
		      List<BoardDTO> list =
		    		  session.selectList("selectAll", map ,new RowBounds(sIndex, length));
			  int totalCount=0;
		      //PageDTO에 4개의 데이터 저장
		      dto.setList(list);
		      dto.setCurPage(curPage);
		      
		      if(map.get("searchValue")==null){
		    	  totalCount = session.selectOne("totalCount");
		      }else{
		    	  totalCount = session.selectOne("totalCount1", map);
		      }
		      
		      dto.setTotalCount(totalCount);
		      dto.setSearchName(map.get("searchName"));
		      dto.setSearchValue(map.get("searchValue"));
		      return dto;
		}//end list()



		public int replyInsert(SqlSession session, BoardDTO bdto) {
			int n = session.insert("replyInsert", bdto);
			return n;
		}
		
		
}//end class










