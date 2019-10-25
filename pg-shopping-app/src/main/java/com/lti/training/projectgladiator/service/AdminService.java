package com.lti.training.projectgladiator.service;

import com.lti.training.projectgladiator.exceptions.MultipleUsersFoundException;
import com.lti.training.projectgladiator.exceptions.NoUserFoundException;
import com.lti.training.projectgladiator.model.Admin;
import com.lti.training.projectgladiator.model.User;

public interface AdminService {

	Admin fetchAdminByUsername(String name) throws NoUserFoundException, MultipleUsersFoundException;
	Admin validateAdmin(String username, String password) throws NoUserFoundException;
}
