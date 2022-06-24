package com.toy.studyroom.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.toy.studyroom.dao.MemberDao;
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
	
	@RequestMapping("loginFormPro")
	public String loginPro() {
		return "alert";
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
	
	@RequestMapping("idChk")
	@ResponseBody
	public boolean idChk(String id) {
		Member m;
		try {
			m = memberService.getIdChk(id);
			if(m.getId().equals(id)) {
				System.out.println("id = "+id+" , m.getId = "+m.getId());
				return true;
			}
		}catch (Exception e) {
		}
		
		return false;
		
	}
	
	@RequestMapping("password")
	public String password() {
		
		return "member/password";
	}
	
	@RequestMapping("passwordReset")
	public String passwordReset(String id) {
		model.addAttribute("id",id);
		return "member/passwordReset";
	}
	
	@RequestMapping("passwordResetPro")
	public String passwordResetPro(String pass,String id) {
		String msg = "비밀번호 변경에 실패했습니다.";
		String url = request.getContextPath()+"/member/passwordReset";
		int rowCnt = 0;
		try {
			rowCnt = memberService.passReset(pass,id);
			if(rowCnt > 0) {
				msg = "비밀번호를 변경했습니다.";
				url = request.getContextPath()+"/";
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "alert";
	}
	

}
