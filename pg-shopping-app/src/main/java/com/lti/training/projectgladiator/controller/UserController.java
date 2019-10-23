package com.lti.training.projectgladiator.controller;

import java.time.LocalDateTime;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
@SessionAttributes("user")
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping(path = "/user/register.do", method = RequestMethod.POST)
	public String registerUser(UserDTO userData, Map model) {
		
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
		model.put("name", user.getName());
		return "redirect:userDashboard";
	}
	
	@RequestMapping(path = "/user/login.do", method = RequestMethod.POST)
	public String loginUser(
							@RequestParam("email") String email,
							@RequestParam("password") String password, Map model) {
		User validatedUser = userService.validateUser(email, password);
		
		model.put("user", validatedUser);
		model.put("name", validatedUser.getName());
		return "../dashboard.jsp";
	}
	
//	@RequestMapping(path = "/user/dashboard")
//	public String showDashboard(@ModelAttribute("user") User validatedUser, Map model) {
//		model.put("user", validatedUser);
//		return "../dashboard.jsp";
//	}
	
	@RequestMapping(path = "/user/logout.do")
	public String logout(Map model) {
		model.remove("user");
		return "../userLogin.jsp";
	}
}
