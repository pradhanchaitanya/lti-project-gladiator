package com.lti.training.projectgladiator.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

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
	public String showAdminLogin(ModelMap model) {
		if(model.containsAttribute("admin")) {
			return "redirect:/showAdminDashboard.do";
		}
		return "adminLogin.jsp";
	}
	
	@RequestMapping(path = "/loginAdmin.do", method = RequestMethod.POST)
	public String loginAdmin(@RequestParam("username") String username,
							@RequestParam("password") String password, ModelMap model) {
		Admin validatedAdmin = null;
		try {
			// handle invalid credentials
			validatedAdmin = adminService.validateUser(username, password);
			model.addAttribute("admin", validatedAdmin);
			return "redirect:/showAdminDashboard.do";
		} catch (Exception e) {
			model.addAttribute("error", "Invalid Credentials");
			return "redirect:/loginAdmin.do";
		}
	}
	
	@RequestMapping(path = "/showAdminDashboard.do", method = RequestMethod.GET)
	public String showAdminDasboard(ModelMap model) {
		if (model.containsAttribute("admin")) {
			List<Retailer> retailers = null;
			try {
				retailers = adminService.getRetailers();
			} catch (Exception e) {
				model.addAttribute("error", e.getMessage());
			}
			model.addAttribute("retailers", retailers);
			return "adminDashboard.jsp";
		}
		
		return "redirect:/loginAdmin.do";
	}
	
	@RequestMapping(path = "/verifyRetailer.do", method = RequestMethod.GET)
	public String verifyRetailer(@RequestParam("id") long retailerId, ModelMap model) {
		adminService.verifyRetailer(retailerId);
		return "redirect:/showAdminDashboard.do";
	}
	
	@RequestMapping(path = "/logoutAdmin.do")
	public String logout(ModelMap model, HttpSession session) {
		model.clear();
		session.invalidate();
		return "redirect:/loginAdmin.do";
	}
	
	@RequestMapping(path = "/removeRetailer.do", method = RequestMethod.GET)
	public String removeRetailer(@RequestParam("id") long retailerId, ModelMap model) {
		adminService.removeRetailer(retailerId);
		return "redirect:/showAdminDashboard.do";
	}
}
