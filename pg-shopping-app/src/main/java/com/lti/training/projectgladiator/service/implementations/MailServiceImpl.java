package com.lti.training.projectgladiator.service.implementations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

import com.lti.training.projectgladiator.model.Retailer;
import com.lti.training.projectgladiator.model.User;
import com.lti.training.projectgladiator.service.MailService;

@Service
public class MailServiceImpl implements MailService {

	private static final String FROM_MAIL = "chaitanya.pradhan@lntinfotech.com";
	
	@Autowired
	private MailSender mailSender;

	@Override
	public void sendWelcomeMail(User newUser) {
		SimpleMailMessage mailMessage = new SimpleMailMessage();

		String message = "Welcome to Shoppe!!\n\n" + 
				"Dear " + newUser.getName() + ",\n" + 
				"We welcome you to a seamless shopping experience! " +
				"This is the one-stop-shop solution for anything and everything. " +
				"We strive to cater to your every shopping need. \n\n\n" + 
				"Regards, \n" + 
				"Team Shoppe";

		mailMessage.setFrom(FROM_MAIL);
		mailMessage.setTo(newUser.getEmail());
		mailMessage.setSubject("Registration Successful!");
		mailMessage.setText(message);

		try {
			mailSender.send(mailMessage);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void sendWelcomeMail(Retailer newRetailer) {
		SimpleMailMessage mailMessage = new SimpleMailMessage();

		String message = "Welcome to Shoppe!!\n\n" + 
				"Dear " + newRetailer.getName() + ",\n" + 
				"We welcome you to a seamless selling experience! " +
				"This is the one-stop-shop solution for anything and everything. " + "Your account will be ready to use post approval. \n" + 
				"We strive to provide to you a platform that always attracts a huge audience of customers for your products. \n\n\n" + 
				"Regards, \n" + 
				"Team Shoppe";

		mailMessage.setFrom(FROM_MAIL);
		mailMessage.setTo(newRetailer.getEmail());
		mailMessage.setSubject("Registration Successful!");
		mailMessage.setText(message);

		mailSender.send(mailMessage);
	}

	@Override
	public void sendApprovalMail(Retailer retailer) {
		SimpleMailMessage mailMessage = new SimpleMailMessage();

		String message = "Dear " + retailer.getName() + ", \n" + 
				"Your account request has been approved. You can now post your products for sale.\n" + 
				"Here's to an enormous number of potential customers...!\n\n\n" + 
				"Regards, \n" + 
				"Team Shoppe";

		mailMessage.setFrom(FROM_MAIL);
		mailMessage.setTo(retailer.getEmail());
		mailMessage.setSubject("Registration Successful!");
		mailMessage.setText(message);

		mailSender.send(mailMessage);							
	}

	@Override
	public void sendDeleteAccountMail(Retailer retailer) {
		SimpleMailMessage mailMessage = new SimpleMailMessage();

		String message = "Dear " + retailer.getName() + ", \n" + 
				"Your account has been permanently deleted. Your products will no longer be available for sale on Shoppe.\n" + 
				"Please register again to continue using our services. We look forward to seeing you around again...!\n\n\n" + 
				"Regards, \n" + 
				"Team Shoppe";

		mailMessage.setFrom(FROM_MAIL);
		mailMessage.setTo(retailer.getEmail());
		mailMessage.setSubject("Registration Successful!");
		mailMessage.setText(message);

		mailSender.send(mailMessage);
	}
}
