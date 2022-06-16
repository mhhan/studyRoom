package com.toy.studyroom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member/")
public class MemberController {

	
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
	public String signupPro() {
		return "member/signupPro";
	}
	
	@RequestMapping("buSignupForm")
	public String buSignupForm() {
		return "member/buSignupForm";
	}
	
	@RequestMapping("buSignupPro")
	public String buSignupPro() {
		return "member/buSignupPro";
	}
}
