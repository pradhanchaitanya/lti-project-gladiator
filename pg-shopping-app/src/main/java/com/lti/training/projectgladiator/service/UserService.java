package com.lti.training.projectgladiator.service;

import com.lti.training.projectgladiator.exceptions.FailedUpsertException;
import com.lti.training.projectgladiator.exceptions.MultipleUsersFoundException;
import com.lti.training.projectgladiator.exceptions.NoUserFoundException;
import com.lti.training.projectgladiator.model.User;

public interface UserService {
	
	void addNewUser(User user) throws FailedUpsertException;
	User fetchUserById(long userId) throws NoUserFoundException, MultipleUsersFoundException;
	User fetchUserByEmail(String email) throws NoUserFoundException, MultipleUsersFoundException;
}
