package com.itbank.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PersonDAO {
	@Autowired private SqlSessionTemplate sql;
	
	public int join(PersonVO vo) {
		return sql.insert("join", vo);
	}
	
	public PersonVO check(String userid) {
		return sql.selectOne("checkuserid", userid);
	}
	
	public PersonVO login(PersonVO vo) {
		return sql.selectOne("login", vo);
	}
	
	public int update(PersonVO vo) {
		return sql.update("update", vo);
	}
	
	public int delete(PersonVO vo) {
		return sql.delete("delete", vo);
	}
	
	public PersonVO findId(PersonVO vo) {
		return sql.selectOne("findId", vo);
	}
}
