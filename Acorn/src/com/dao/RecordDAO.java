package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dto.RecordDTO;

public class RecordDAO {


	public int recordin(SqlSession session, RecordDTO rdto) {
		int n = session.insert("com.record.recordin", rdto);
		return n;
	}



	public RecordDTO recordout(SqlSession session, String userid) {
		RecordDTO rdto = session.selectOne("com.record.recordout", userid);
		return rdto;
	}



	public List<RecordDTO> dranking(SqlSession session) {
		 List<RecordDTO> list = session.selectList("com.record.dranking");
		 return list;
	}



	public List<RecordDTO> hranking(SqlSession session) {
		List<RecordDTO> list= session.selectList("com.record.hranking");
		return list;
	
	}







}
