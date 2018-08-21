package com.dao;

import java.util.HashMap;
import java.util.List;

import javax.print.DocFlavor.STRING;

import org.apache.ibatis.session.SqlSession;

import com.dto.MemberDTO;
import com.dto.ReservationDTO;

public class MemberDAO {
	public MemberDTO login(SqlSession session, HashMap<String, String> map) {
		MemberDTO dto = session.selectOne("com.member.login", map);
		return dto;
	}

	public int idCheck(SqlSession session, String userid) {
		int result = session.selectOne("com.member.idCheck", userid);
		return result;
	}

	public int register(SqlSession session, MemberDTO mdto) {
		int result = session.insert("com.member.register", mdto);
		return result;
	}
}
