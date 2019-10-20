package com.lti.training.projectgladiator.tests;

import java.time.LocalDateTime;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.lti.training.projectgladiator.exceptions.FailedUpsertException;
import com.lti.training.projectgladiator.model.User;
import com.lti.training.projectgladiator.repository.UserRepository;
import com.lti.training.projectgladiator.service.UserService;
import com.lti.training.projectgladiator.service.implementations.UserServiceImpl;

////@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = "classpath:test-config.xml")
public class UserTest {

//	@Autowired
	//private UserService service;
//	private UserRepository userRepository;
	
	
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
		user.setCreatedAt(LocalDateTime.now());
		
		try {
			service.addNewUser(user);
		} catch (FailedUpsertException e) {
			e.printStackTrace();
		}
	}
}
