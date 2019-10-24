package com.lti.training.projectgladiator.controller;

import java.time.LocalDateTime;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.lti.training.projectgladiator.dto.UserDTO;
import com.lti.training.projectgladiator.exceptions.FailedUpsertException;
import com.lti.training.projectgladiator.model.User;
import com.lti.training.projectgladiator.service.UserService;

@Controller
@SessionAttributes({"user"})
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping(path = "/registerUser.do", method = RequestMethod.POST)
	public String registerUser(UserDTO userData, ModelMap model) {
		//model.addAttribute("userDTO", new UserDTO());
		
		User user = new User();
		user.setName(userData.getName());
		user.setEmail(userData.getEmail());
		user.setMobileNumber(userData.getMobileNumber());
		user.setPassword(userData.getPassword());
		user.setAddress(userData.getAddress());
		user.setCreatedAt(LocalDateTime.now());
		try {
			userService.addNewUser(user);
		} catch (FailedUpsertException e) {
			e.printStackTrace();
			// display relevant error on page
		}
		model.addAttribute("user", user);
		return "redirect:/showDashboard.do";
	}
	
	@RequestMapping("/showDashboard.do")
	public String showDashboard(ModelMap model) {
		if (model.containsAttribute("user")) {
			return "userDashboard.jsp";
		}
		
		return "redirect:/loginUser.do";
	}
	
	@RequestMapping(path = "/loginUser.do", method = RequestMethod.GET)
	public String showLoginForUser() {
		return "login.jsp";
	}
	
	@RequestMapping(path = "/loginUser.do", method = RequestMethod.POST)
	public String loginUser(@RequestParam("email") String email,
							@RequestParam("password") String password, ModelMap model) {
		User validatedUser = userService.validateUser(email, password);
		
		model.addAttribute("user", validatedUser);
		return "redirect:/showDashboard.do";
	}

	@RequestMapping(path = "/logoutUser.do")
	public String logout(ModelMap model, HttpSession session) {
		model.clear();
		session.invalidate();
		return "redirect:/showHomepage.do";
	}
}
