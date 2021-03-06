package com.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dao.MemberDAO;
import com.dao.ReservationDAO;
import com.dto.MemberDTO;
import com.dto.ReservationDTO;

public class ReservationService {
	ReservationDAO dao = new ReservationDAO();

	public List<ReservationDTO> reservationList(String userid) {
		SqlSession session = MySqlSessionFactory.getSession();
		List<ReservationDTO> list = null;
		try {
			list = dao.reservationList(session, userid);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}

	public int addReservation(ReservationDTO rdto) {
		SqlSession session = MySqlSessionFactory.getSession();
		int n = 0;
		try {
			n = dao.addReservation(session, rdto);
			if (n != 0)
				session.commit();
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		} finally {
			session.close();
		}
		return n;
	}

	public int removeReservation(HashMap<String, String> map) {
		SqlSession session = MySqlSessionFactory.getSession();
		int n = 0;
		try {
			n = dao.removeReservation(session, map);
			if (n != 0)
				session.commit();
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		} finally {
			session.close();
		}
		return n;
	}

	public int checkReservation(HashMap<String, String> map) {
		SqlSession session = MySqlSessionFactory.getSession();
		int result = 0;
		try {
			result = dao.checkReservation(session, map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}

}
