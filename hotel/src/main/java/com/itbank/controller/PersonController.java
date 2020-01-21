package com.itbank.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.dao.PersonVO;
import com.itbank.service.PersonService;

@Controller
public class PersonController {
	@Autowired private PersonService ps;
	
	// 메인 페이지
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model, HttpSession session) {
		PersonVO r = (PersonVO) session.getAttribute("hotel/login");
		model.addAttribute("loginr", r);
		return "person/main";
	}
	
	// 로그인
	@RequestMapping(value="login", method=RequestMethod.GET)
	public ModelAndView login(HttpSession session, Model model) {
		if(session.getAttribute("auto") != null) {
			model.addAttribute("autologin", session.getAttribute("auto"));
			return new ModelAndView("home");
		}else {
			return new ModelAndView("person/login");
		}
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public ModelAndView login(PersonVO vo, HttpSession session, Model model,
							String idsave, String auto, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("person/login");
		PersonVO r = ps.login(vo);
		
		if(r != null) {
			mv.setViewName("redirect:/");
			session.setAttribute("login", r);
		}else {
			model.addAttribute("no", "로그인 실패");
		}
		if(idsave != null) {
			Cookie save = new Cookie("idsave", r.getUserid());
			save.setMaxAge(60*60*24*7);
			response.addCookie(save);
		}else {
			Cookie not = new Cookie("not", idsave);
			not.setMaxAge(0);
			response.addCookie(not);
		}
		if(auto != null) {
			session.setAttribute("auto", r);
			Cookie a = new Cookie("JSESSIOID", session.getId());
			a.setMaxAge(60*60*24*7);
			response.addCookie(a);
		}
		return mv;
	}
	
	// 회원가입
	@RequestMapping(value="join", method=RequestMethod.GET)
	public ModelAndView join() {
		return new ModelAndView("person/join");
	}
	
	@RequestMapping(value="join", method=RequestMethod.POST)
	public ModelAndView join(JoinRequest jr) {
		ModelAndView mv = new ModelAndView("redirect:/");
		int row = ps.join(jr);
		mv.addObject("row", row);
		return mv;
	}
	
	@RequestMapping(value="check", produces="application/text;charset=utf8")
	@ResponseBody
	public String idcheck(String userid) {
		boolean check = ps.idcheck(userid);
		return check ? "이미 사용 중인 ID입니다" : "사용 가능한 ID입니다";
	}
	
	// 로그아웃
	@RequestMapping("logout")
	public String logout(HttpSession session, HttpServletResponse response, String idsave) {
		session.invalidate();
		return "person/main";
	}
	
	// 마이 페이지 → 회원 정보 수정
	@RequestMapping(value="mypage", method=RequestMethod.GET)
	public String mypage() {
		return "person/mypage";
	}
	
	@RequestMapping(value="mypage", method=RequestMethod.POST)
	public ModelAndView mypage(PersonVO vo, HttpSession session) {
		int up = ps.update(vo);
		if(up == 1) {
			session.setAttribute("login", vo);
			return new ModelAndView("person/info");
		}else {
			return new ModelAndView("person/mypage");
		}
	}
	
	// 마이 페이지 → 회원 탈퇴
	@RequestMapping(value="delete", method=RequestMethod.GET)
	public ModelAndView delete() {
		return new ModelAndView("person/delete");
	}
	
	@RequestMapping(value="delete", method=RequestMethod.POST)
	public String delete(String userpw, HttpSession session, HttpServletResponse response) {
		PersonVO userd = (PersonVO)session.getAttribute("login");
		if(userpw.equals(userd.getUserpw())){
			ps.delete(userd);
			session.removeAttribute("login");
			Cookie dd = new Cookie("idsave", null);
			dd.setMaxAge(0);
			response.addCookie(dd);
			return "person/main";
		}else {
			return "person/mypage";
		}
	}
}
