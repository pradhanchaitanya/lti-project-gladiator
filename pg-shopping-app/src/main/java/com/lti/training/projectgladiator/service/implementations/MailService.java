package com.lti.training.projectgladiator.service.implementations;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

import com.lti.training.projectgladiator.model.User;

public class MailService {
	
	private static final String from = "chaitanya.pradhan@lntinfotech.com";

	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	public void setMailSender(JavaMailSender mailSender) {
		this.mailSender = mailSender;
	}
	
	public void sendWelcomeMail(User newUser) {
		MimeMessage mailMessage = mailSender.createMimeMessage();
		
		MimeMessageHelper mailHelper = new MimeMessageHelper(mailMessage);
		
		StringBuffer mailBody = new StringBuffer();
		mailBody.append("<img src='https://github.com/pradhanchaitanya/lti-project-gladiator/blob/assets/Logo/Logo%201.PNG?raw=true'");
		mailBody.append("<h1>Welcome to Shoppe!</h1>");
		mailBody.append("<br/>");
		mailBody.append("<div>");
		mailBody.append("<p>Dear " + newUser.getName() + ",<br/>");
		mailBody.append("We welcome you to a seemless shopping experience!");
		mailBody.append("</div>");
		mailBody.append("Regards,<br/>");
		mailBody.append("Shoppe, Inc.");
		
		try {
			mailHelper.setFrom(from);
			mailHelper.setTo(newUser.getEmail());
			mailHelper.setSubject("Registration Successful");
			mailMessage.setContent(mailBody.toString(), "text/html");
//			mailHelper.setText(mailBody.toString(), true);
		} catch (MessagingException e) {
			
		}
		mailSender.send(mailMessage);
	}
}
