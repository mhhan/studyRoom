package com.toy.studyroom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/index")
public class MemberController {

	
	@RequestMapping("loginForm")
	public String login() {
		return "view/member/loginForm";
	}
	
	@RequestMapping("loginFormPro")
	public String loginPro() {
		return "view/member/loginForm";
	}
	
	
	
	@RequestMapping("signupForm")
	public String signupForm() {
		return "view/member/signupForm";
	}
	
	@RequestMapping("signupPro")
	public String signupPro() {
		return "view/member/signupPro";
	}
}
