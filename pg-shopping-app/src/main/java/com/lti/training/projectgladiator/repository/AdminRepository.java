package com.lti.training.projectgladiator.repository;

import com.lti.training.projectgladiator.exceptions.MultipleUsersFoundException;
import com.lti.training.projectgladiator.exceptions.NoUserFoundException;
import com.lti.training.projectgladiator.model.Admin;

public interface AdminRepository extends GenericRepository {

	public Admin fetchAdminByUsername(String name) throws NoUserFoundException, MultipleUsersFoundException;
}
