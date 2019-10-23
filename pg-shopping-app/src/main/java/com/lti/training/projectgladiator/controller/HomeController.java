package com.lti.training.projectgladiator.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/showHomepage.do")
	public String showHomePage() {
		return "index.jsp";
	}
}
