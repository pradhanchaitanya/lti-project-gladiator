package com.lti.training.projectgladiator.service;

import com.lti.training.projectgladiator.dao.GenericDao;
import com.lti.training.projectgladiator.entity.User;

public class UserServiceImpl implements UserService {

	public void addNewUser(User user) {
		GenericDao dao = new GenericDao();
		dao.upsert(user);
	}

	public User fetchUserById(long userId) {
		GenericDao dao = new GenericDao();
		User user = (User) dao.fetchById(User.class, userId);
		return user;
	}

	
}
