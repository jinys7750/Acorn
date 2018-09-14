package com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dto.RecordDTO;
import com.dto.ReservationDTO;

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



	public ReservationDTO playOut(SqlSession session, String userid) {
		ReservationDTO pdto = session.selectOne("com.record.playOut", userid);
		return pdto;
	}











}
