package com.lti.training.projectgladiator.test;

import java.time.LocalDateTime;

import org.junit.Test;

import com.lti.training.projectgladiator.entity.User;
import com.lti.training.projectgladiator.service.UserService;
import com.lti.training.projectgladiator.service.UserServiceImpl;

public class UserTest {

	@Test
	public void addNewUser() {
		User user = new User();
		user.setName("Nigel");
		user.setEmail("nigel@lti.com");
		user.setPassword("password");
		user.setMobileNumber(9876543210L);
		user.setAddress("Mumbai");
		user.setCreatedAt(LocalDateTime.now());
		
		UserService service = new UserServiceImpl();
		service.addNewUser(user);
	}
	
	@Test
	public void fetchUserById() {
		UserService service = new UserServiceImpl();
		User user = service.fetchUserById(102);
		
		System.out.println(user.getName());
	}
}
