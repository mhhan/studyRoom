package com.toy.studyroom.service;

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

	
}
