package com.lti.training.projectgladiator.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lti.training.projectgladiator.dto.UserDTO;
import com.lti.training.projectgladiator.exceptions.FailedUpsertException;
import com.lti.training.projectgladiator.model.User;
import com.lti.training.projectgladiator.service.UserService;

@Controller
@RequestMapping(path = "/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping(path = "/user/register", method = RequestMethod.POST)
	public String registerUser(UserDTO userData) {
		
		User user = new User();
		user.setName(userData.getName());
		user.setEmail(userData.getEmail());
		user.setMobileNumber(userData.getMobileNumber());
		user.setPassword(userData.getPassword());
		user.setAddress(userData.getAddress());
		try {
			userService.addNewUser(user);
		} catch (FailedUpsertException e) {
			e.printStackTrace();
			// display relevant error on page
		}
		return "login.jsp";
	}
}
