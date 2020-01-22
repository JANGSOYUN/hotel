package com.trip.person.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trip.person.controller.JoinRequest;
import com.trip.person.dao.PersonDAO;
import com.trip.person.dao.PersonVO;

@Service
public class PersonService {
	@Autowired private PersonDAO dao;

	public int join(JoinRequest jr) {
		if (jr.passwordSame() == false) {
			return -1;
		}

		PersonVO vo = new PersonVO();
		vo.setUserid(jr.getUserid());
		vo.setUserpw(jr.getUserpw());
		vo.setUsername(jr.getUsername());
		vo.setUseremail(jr.getUseremail());
		vo.setUserphone(jr.getUserphone());

		return dao.join(vo);
	}
	
	public boolean idcheck(String userid) {
		PersonVO vo = null;
		vo = dao.check(userid);
		return vo != null;
	}

	public PersonVO login(PersonVO vo) {
		return dao.login(vo);
	}

	public int update(PersonVO vo) {
		return dao.update(vo);
	}

	public int delete(PersonVO vo) {
		return dao.delete(vo);
	}
}
