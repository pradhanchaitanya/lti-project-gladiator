package com.lti.training.projectgladiator.service;

import com.lti.training.projectgladiator.exceptions.MultipleUsersFoundException;
import com.lti.training.projectgladiator.exceptions.NoUserFoundException;
import com.lti.training.projectgladiator.model.Retailer;

public interface RetailerService {

	void addNewRetailer(Retailer retailer);
	Retailer fetchRetailerById(long retailerId);
	Retailer validateRetailer(String email, String password) throws NoUserFoundException;
	Retailer fetchRetailerByEmail(String email) throws NoUserFoundException, MultipleUsersFoundException;
}
