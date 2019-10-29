package com.lti.training.projectgladiator.service;

import java.util.Set;

import com.lti.training.projectgladiator.exceptions.FailedUpsertException;
import com.lti.training.projectgladiator.exceptions.MultipleUsersFoundException;
import com.lti.training.projectgladiator.exceptions.NoUserFoundException;
import com.lti.training.projectgladiator.model.Order;
import com.lti.training.projectgladiator.model.User;

public interface UserService {
	
	void addNewUser(User user) throws FailedUpsertException;
	User fetchUserById(long userId) throws NoUserFoundException, MultipleUsersFoundException;
	User fetchUserByEmail(String email) throws NoUserFoundException, MultipleUsersFoundException;
	void updateUser(User user) throws FailedUpsertException,NoUserFoundException, MultipleUsersFoundException;
	User validateUser(String email, String password) throws NoUserFoundException;
	void placeOrder(Order order) throws NoUserFoundException;
	Set<Order> fetchOrdersForUser(User user) throws NoUserFoundException;
}
