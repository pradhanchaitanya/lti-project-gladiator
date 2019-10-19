package com.lti.training.projectgladiator.tests;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import com.lti.training.projectgladiator.exceptions.FailedUpsertException;
import com.lti.training.projectgladiator.model.User;
import com.lti.training.projectgladiator.service.UserService;
import com.lti.training.projectgladiator.service.implementations.UserServiceImpl;

public class UserTest {

	@Test
	public void addNewUser() {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("test-config.xml");
		UserService service = ctx.getBean(UserService.class);
		
		User user = new User();
		user.setName("Gloria");
		user.setEmail("gloria@lti.com");
		user.setMobileNumber(987654321);
		user.setPassword("gloria");
		user.setAddress("Mumbai");
		
		try {
			service.addNewUser(user);
		} catch (FailedUpsertException e) {
			e.printStackTrace();
		}
	}
}
