package com.toy.studyroom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/base")
public class BaseController {

	@RequestMapping("/base")
	public String index() {
		return "base/base";
	}
}