package com.dao;

import java.util.HashMap;
import java.util.List;

import javax.print.DocFlavor.STRING;

import org.apache.ibatis.session.SqlSession;

import com.dto.MemberDTO;
import com.dto.ReservationDTO;

public class ReservationDAO {
	public List<ReservationDTO> reservationList(SqlSession session, HashMap<String, String> map) {
		List<ReservationDTO> list = session.selectList("com.reserv.reservationList", map);
		return list;
	}

	public int addReservation(SqlSession session, ReservationDTO rdto) {
		int n = session.insert("com.reserv.addReservation", rdto);
		return n;
	}
}
