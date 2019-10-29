package com.lti.training.projectgladiator.repository;

import java.util.Set;

import com.lti.training.projectgladiator.exceptions.NoUserFoundException;
import com.lti.training.projectgladiator.model.Order;
import com.lti.training.projectgladiator.model.User;

public interface OrderRepository extends GenericRepository {

	void addOrder(Order order);
	Set<Order> fetchOrdersForUser(User user) throws NoUserFoundException;
}
