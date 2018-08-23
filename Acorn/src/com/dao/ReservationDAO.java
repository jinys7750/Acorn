package com.dao;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import com.dto.ReservationDTO;

public class ReservationDAO {
	public List<ReservationDTO> reservationList(SqlSession session, String userid) {
		List<ReservationDTO> list = session.selectList("com.reserv.reservationList", userid);
		return list;
	}

	public int addReservation(SqlSession session, ReservationDTO rdto) {
		int n = session.insert("com.reserv.addReservation", rdto);
		System.out.println("addReservation : " + n);
		return n;
	}

	public int removeReservation(SqlSession session, HashMap<String, String> map) {
		int n = session.insert("com.reserv.removeReservation", map);
		System.out.println("removeReservation : " + n);
		return n;
	}

	public int checkReservation(SqlSession session, HashMap<String, String> map) {
		int result = session.selectOne("com.reserv.checkReservation", map);
		return result;
	}
}
