package com.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dao.RecordDAO;
import com.dto.MemberDTO;
import com.dto.RecordDTO;

public class RecordService {

	RecordDAO dao = new RecordDAO();

	public RecordService() {

	}
	public int recordin(RecordDTO rdto) {
		SqlSession session = MySqlSessionFactory.getSession();
		int count = 0;
		try {
			count = dao.recordin(session, rdto);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return count;
	}

	public RecordDTO recordout(String userid) {
		SqlSession session = MySqlSessionFactory.getSession();
		RecordDTO rdto = null;
		try {
			rdto = dao.recordout(session, userid);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return rdto;
	}

	public List<RecordDTO> dranking() {
		SqlSession session = MySqlSessionFactory.getSession();
		List<RecordDTO> list = null;
		try {
			list = dao.dranking(session);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}

	public List<RecordDTO> hranking() {
		SqlSession session = MySqlSessionFactory.getSession();
		List<RecordDTO> list = null;
		try {
			list = dao.hranking(session);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}

}
