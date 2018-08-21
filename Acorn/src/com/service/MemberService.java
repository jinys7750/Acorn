package com.service;

import java.util.HashMap;
import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dao.MemberDAO;
import com.dto.MemberDTO;

public class MemberService {
	MemberDAO dao = new MemberDAO();

	public MemberDTO login(String userid, String passwd) {
		SqlSession session = MySqlSessionFactory.getSession();
		MemberDTO dto = new MemberDTO();
		HashMap<String, String> map = new HashMap<>();
		map.put("userid", userid);
		map.put("passwd", passwd);
		try {
			dto = dao.login(session, map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return dto;
	}

	public int idCheck(String userid) {
		SqlSession session = MySqlSessionFactory.getSession();
		int result = 0;
		try {
			result = dao.idCheck(session, userid);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}

	public int register(MemberDTO mdto) {
		SqlSession session = MySqlSessionFactory.getSession();
		int result = 0;
		try {
			result = dao.register(session, mdto);
			if(result!=0)
				session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}

}
