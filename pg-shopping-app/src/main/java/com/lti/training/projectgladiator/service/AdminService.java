package com.lti.training.projectgladiator.service;

import java.util.List;

import com.lti.training.projectgladiator.exceptions.MultipleUsersFoundException;
import com.lti.training.projectgladiator.exceptions.NoUserFoundException;
import com.lti.training.projectgladiator.model.Admin;
import com.lti.training.projectgladiator.model.Retailer;

public interface AdminService {

	Admin fetchAdminByUsername(String name) throws NoUserFoundException, MultipleUsersFoundException;
	Admin validateUser(String username, String password) throws NoUserFoundException;
	List<Retailer> getRetailers() throws NoUserFoundException;
	Admin validateAdmin(String username, String password) throws NoUserFoundException;
	void verifyRetailer(long retailerId) throws NoUserFoundException;
	void removeRetailer(long retailerId) throws NoUserFoundException;
}
