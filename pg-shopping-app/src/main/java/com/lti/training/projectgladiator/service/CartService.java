package com.lti.training.projectgladiator.service;

import com.lti.training.projectgladiator.model.Cart;
import com.lti.training.projectgladiator.model.User;

public interface CartService {

	void addCartForUser(Cart cart, User user);
	void updateCartForUser(Cart cart, User user);
	Cart fetchCartById(long cartId);
	Cart fetchCartForUser(User user);
}
