package com.lti.training.projectgladiator.test;

import org.junit.Test;

import com.lti.training.projectgladiator.entity.Cart;
import com.lti.training.projectgladiator.entity.User;
import com.lti.training.projectgladiator.service.CartService;
import com.lti.training.projectgladiator.service.CartServiceImpl;
import com.lti.training.projectgladiator.service.UserServiceImpl;

public class CartTest {

	@Test
	public void fetchCartForUser() {
		CartService service = new CartServiceImpl();
		
		User user = new UserServiceImpl().fetchUserById(102);
		
		Cart cart = service.fetchCartForUser(user);
		System.out.println(cart.getUser().getName());
	}
}
