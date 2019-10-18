package com.lti.training.projectgladiator.repository;

import com.lti.training.projectgladiator.exceptions.MultipleUsersFoundException;
import com.lti.training.projectgladiator.exceptions.NoUserFoundException;
import com.lti.training.projectgladiator.model.User;

public interface UserRepository extends GenericRepository {

	public User fetchUserByEmail(String email) throws NoUserFoundException, MultipleUsersFoundException;
}
