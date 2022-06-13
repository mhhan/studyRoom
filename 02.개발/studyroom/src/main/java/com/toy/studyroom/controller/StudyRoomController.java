package com.toy.studyroom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StudyRoomController {

	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/loginForm")
	public String login() {
		return "loginForm";
	}
}
