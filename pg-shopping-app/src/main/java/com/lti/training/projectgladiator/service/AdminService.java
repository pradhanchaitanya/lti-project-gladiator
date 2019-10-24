package com.lti.training.projectgladiator.service;

import com.lti.training.projectgladiator.exceptions.MultipleUsersFoundException;
import com.lti.training.projectgladiator.exceptions.NoUserFoundException;
import com.lti.training.projectgladiator.model.Admin;

public interface AdminService {

	Admin fetchAdminByUsername(String name) throws NoUserFoundException, MultipleUsersFoundException;
}
