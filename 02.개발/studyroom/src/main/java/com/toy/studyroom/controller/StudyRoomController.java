package com.toy.studyroom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/study")
public class StudyRoomController {

	@RequestMapping("/index")
	public String index() {
		return "index/index";
	}
}