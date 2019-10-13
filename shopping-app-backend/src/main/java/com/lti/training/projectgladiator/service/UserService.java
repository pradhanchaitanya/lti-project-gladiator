package com.lti.training.projectgladiator.service;

import com.lti.training.projectgladiator.entity.User;

public interface UserService {

	void addNewUser(User user);
	User fetchUserById(long userId);
}
