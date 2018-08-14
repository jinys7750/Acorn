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
}
