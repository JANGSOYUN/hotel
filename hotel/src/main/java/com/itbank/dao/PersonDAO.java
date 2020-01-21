package com.itbank.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PersonDAO {
	@Autowired private SqlSessionTemplate sql;
	
	// 회원가입
	public int join(PersonVO vo) {
		return sql.insert("join", vo);
	}
	
	// 아이디 중복확인
	public PersonVO check(String userid) {
		return sql.selectOne("checkuserid", userid);
	}
	
	// 로그인
	public PersonVO login(PersonVO vo) {
		return sql.selectOne("login", vo);
	}
	
	// 아이디, 비번 찾기
	
	// 회원정보수정
	public int update(PersonVO vo) {
		return sql.update("update", vo);
	}
	
	// 회원탈퇴 
	public int delete(PersonVO vo) {
		return sql.delete("delete", vo);
	}
}
