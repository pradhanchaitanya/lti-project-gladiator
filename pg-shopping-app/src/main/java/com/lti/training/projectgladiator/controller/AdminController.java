package com.lti.training.projectgladiator.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.lti.training.projectgladiator.model.Admin;
import com.lti.training.projectgladiator.model.Retailer;
import com.lti.training.projectgladiator.service.AdminService;

@Controller
@SessionAttributes({"admin", "retailers"})
public class AdminController {
	
	@Autowired
	private AdminService adminService;

	@RequestMapping(path = "/loginAdmin.do", method = RequestMethod.GET)
	public String showAdminLogin() {
		return "adminLogin.jsp";
	}
	
	@RequestMapping(path = "/loginAdmin.do", method = RequestMethod.POST)
	public String loginAdmin(@RequestParam("username") String username,
							@RequestParam("password") String password, ModelMap model) {
		Admin validatedAdmin = adminService.validateUser(username, password);
		// handle invalid credentials
		
		model.addAttribute("admin", validatedAdmin);
		return "redirect:/showAdminDashboard.do";
	}
	
	@RequestMapping(path = "/showAdminDashboard.do", method = RequestMethod.GET)
	public String showAdminDasboard(ModelMap model) {
		if (model.containsAttribute("admin")) {
			List<Retailer> retailers = adminService.getRetailers();
			model.addAttribute("retailers", retailers);
			return "adminDashboard.jsp";
		}
		
		return "redirect:/loginAdmin.do";
	}
	
	@RequestMapping(path = "/verifyRetailer.do/{id}", method = RequestMethod.GET)
	public String verifyRetailer(@PathVariable("id") long retailerId, ModelMap model) {
		adminService.verifyRetailer(retailerId);
		return "adminDashboard.jsp";
	}
}
