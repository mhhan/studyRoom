package com.toy.studyroom.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.toy.studyroom.model.Member;

@Mapper
public interface MemberDao {

	public int getMemberSelect(Member m);

	public Member getIdChk(String id);

	public int passReset(Map map);

}
