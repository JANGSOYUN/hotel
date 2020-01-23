package com.itbank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.controller.JoinRequest;
import com.itbank.dao.PersonDAO;
import com.itbank.dao.PersonVO;

@Service
public class PersonService {
	@Autowired private PersonDAO dao;

	public PersonVO login(PersonVO vo) {
		return dao.login(vo);
	}

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
	
	public int update(PersonVO vo) {
		return dao.update(vo);
		// dao = sqlSessionTemplate.update();
	}

	public int delete(PersonVO vo) {
		return dao.delete(vo);
	}
	
	public PersonVO findId(PersonVO vo) {
		return dao.findId(vo);
	}
	
//	public ModelAndView findId(PersonVO vo) {
//		PersonVO pv = dao.findId(vo);
//		ModelAndView mv = new ModelAndView();
//		if(vo.getUserid() == null) {
//			mv.setViewName("person/login");
//			return mv;
//		}else {
//			mv.addObject(pv);
//			return mv;
//		}
//	}
}
