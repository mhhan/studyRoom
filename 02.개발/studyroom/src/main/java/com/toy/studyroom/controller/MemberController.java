package com.toy.studyroom.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.toy.studyroom.model.Member;
import com.toy.studyroom.service.MemberService;

@Controller
@RequestMapping("/member/")
public class MemberController {

	HttpSession session;
	HttpServletRequest request;
	Model model;
	
	private final MemberService memberService;
	
	public MemberController(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@ModelAttribute
	void init(HttpServletRequest request, Model model) {
		this.request = request;
		this.model = model;
		this.session = request.getSession();
	}
	
	@RequestMapping("loginForm")
	public String login() {
		return "member/loginForm";
	}
	
	@RequestMapping("loginFormPro")
	public String loginPro() {
		return "member/loginPro";
	}
	
	
	
	@RequestMapping("signupForm")
	public String signupForm() {
		return "member/signupForm";
	}
	
	@RequestMapping("signupPro")
	public String signupPro(Member m) {
		int n = memberService.getMemberSelect(m);
		String msg = "가입에 실패했습니다.";
		String url = request.getContextPath()+"/member/signupForm";
		if(n > 0) {
			msg = m.getName()+"님의 가입을 환영합니다.";
			url = request.getContextPath()+"/";
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url",url);
		return "alert";
	}

}
