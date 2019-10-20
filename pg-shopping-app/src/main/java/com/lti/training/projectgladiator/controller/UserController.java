package com.lti.training.projectgladiator.controller;

import java.time.LocalDateTime;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lti.training.projectgladiator.dto.UserDTO;
import com.lti.training.projectgladiator.exceptions.FailedUpsertException;
import com.lti.training.projectgladiator.model.User;
import com.lti.training.projectgladiator.service.UserService;

@Controller
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
		return "../welcomeUser.jsp";
	}
	
	@RequestMapping(path = "/user/login.do", method = RequestMethod.POST)
	public String loginUser(UserDTO userData, Map model) {
		
		User user = new User();
		user.setName(userData.getName());
		user.setEmail(userData.getEmail());
		user.setMobileNumber(userData.getMobileNumber());
		user.setPassword(userData.getPassword());
		user.setAddress(userData.getAddress());
		user.setCreatedAt(LocalDateTime.now());
		
		User validatedUser = userService.validateUser(user);
		
		model.put("name", validatedUser.getName());
		return "../welcomeUser.jsp";
	}
}
