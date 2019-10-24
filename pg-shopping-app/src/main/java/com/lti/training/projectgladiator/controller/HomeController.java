package com.lti.training.projectgladiator.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("user")
public class HomeController {

	@RequestMapping("/showHomepage.do")
	public String showHomePage(ModelMap model) {
		if (model.containsAttribute("user")) {
			return "index.jsp?loggedin=true";
		}
		return "index.jsp";
	}
	
	@RequestMapping("/showAbout.do")
	public String showAboutPage(ModelMap model) {
		if (model.containsAttribute("user")) {
			return "aboutus.jsp?loggedin=true";
		}
		return "aboutus.jsp";
	}
	
	@RequestMapping("/showRetailerHomepage.do")
	public String showRetailerHomePage(ModelMap model) {
		if (model.containsAttribute("retialer")) {
			return "retailer.jsp?loggedin=true";
		}
		return "retailer.jsp";
	}
	
}
