package com.toy.studyroom.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.toy.studyroom.dao.MemberDao;
import com.toy.studyroom.model.Member;

@Service
public class MemberService {

	private final MemberDao memberDao;
	
	public MemberService(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	
	
	public int getMemberSelect(Member m) {
		
		return memberDao.getMemberSelect(m);
	}


	public Member getIdChk(String id) {
		return memberDao.getIdChk(id);
	}


	public int passReset(String pass, String id) {
		Map<String, String> map = new HashMap<>();
		map.put("pass", pass);
		map.put("id", id);
		return memberDao.passReset(map);
	}

	
}
