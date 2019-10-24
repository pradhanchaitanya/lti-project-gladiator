package com.lti.training.projectgladiator.controller;

import java.time.LocalDateTime;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.lti.training.projectgladiator.dto.RetailerDTO;
import com.lti.training.projectgladiator.exceptions.FailedUpsertException;
import com.lti.training.projectgladiator.model.Retailer;
import com.lti.training.projectgladiator.model.User;
import com.lti.training.projectgladiator.service.RetailerService;

@Controller
@SessionAttributes("retailer")
public class RetailerController {

	@Autowired
	RetailerService retailerService;
	
	@RequestMapping(path = "/registerRetailer.do", method = RequestMethod.GET)
	public String showRegisterForRetailer() {
		return "retailerRegistration.jsp";
	}
	
	@RequestMapping(path = "/registerRetailer.do", method = RequestMethod.POST)
	public String registerRetailer(RetailerDTO retailerData, ModelMap model) {
		
		Retailer retailer = new Retailer();
		retailer.setName(retailerData.getName());
		retailer.setEmail(retailerData.getEmail());
		retailer.setMobileNumber(retailerData.getMobileNumber());
		retailer.setPassword(retailerData.getPassword());
		retailer.setAddress(retailerData.getAddress());
		retailer.setCreatedAt(LocalDateTime.now());
		
		try {
			retailerService.addNewRetailer(retailer);
		} catch (Exception e) {
			model.addAttribute("isError", true);
			model.addAttribute("error", "Please enter valid data!");
			return "redirect:/registerRetailer.do";
		}
		
		model.addAttribute("retailer", retailer);
		return "redirect:/showRetailerDashboard.do";
	}
	
	@RequestMapping(path = "/loginRetailer.do", method = RequestMethod.POST) 
	public String loginRetailer(@RequestParam("email") String email,
								@RequestParam("password") String password, ModelMap model) {
		Retailer validatedRetailer = retailerService.validateRetailer(email, password);
		
		model.addAttribute("retailer", validatedRetailer);
		return "redirect:/showRetailerDashboard.do";
	}
	
	@RequestMapping(path = "/logoutRetailer.do")
	public String logout(ModelMap model, HttpSession session) {
		model.clear();
		session.invalidate();
		return "redirect:/showRetailerLogin.do";
	}
	
	@RequestMapping("/showRetailerDashboard.do")
	public String showDashboard(ModelMap model) {
		if (model.containsAttribute("user")) {
			return "retailerDashboard.jsp";
		}
		
		return "redirect:/loginRetailer.do";
	}
	
	@RequestMapping(path = "/loginRetailer.do", method = RequestMethod.GET)
	public String showLoginForUser() {
		return "retailerLogin.jsp";
	}
}
