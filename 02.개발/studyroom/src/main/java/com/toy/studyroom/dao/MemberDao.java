package com.toy.studyroom.dao;

import org.apache.ibatis.annotations.Mapper;

import com.toy.studyroom.model.Member;

@Mapper
public interface MemberDao {

	public int getMemberSelect(Member m);

	public Member getIdChk(String id);

}
