package com.lti.training.projectgladiator.tests;

import java.time.LocalDateTime;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.lti.training.projectgladiator.model.User;
import com.lti.training.projectgladiator.service.MailService;

public class MailTest {
	
//	@Autowired
//	private MailService mailService;

	@Test
	public void testWelcomeMail() {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("test-config.xml");
		MailService mailService = ctx.getBean(MailService.class);
		
		User user = new User();
		user.setName("Chaitanya");
		user.setEmail("chaitanya.pradhan1211@gmail.com");
		user.setPassword("chaitanya");
		user.setAddress("Ambernath");
		user.setCreatedAt(LocalDateTime.now());
		user.setMobileNumber(7208451704L);
		
		System.out.println(mailService);
//		mailService.sendWelcomeMail(user);
	}
}
