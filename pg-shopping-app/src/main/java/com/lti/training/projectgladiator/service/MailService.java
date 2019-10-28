package com.lti.training.projectgladiator.service;

import com.lti.training.projectgladiator.model.Retailer;
import com.lti.training.projectgladiator.model.User;

public interface MailService {

	void sendWelcomeMail(User newUser);
	void sendWelcomeMail(Retailer newRetailer);
	void sendApprovalMail(Retailer retailer);
	void sendDeleteAccountMail(Retailer retailer);
}
