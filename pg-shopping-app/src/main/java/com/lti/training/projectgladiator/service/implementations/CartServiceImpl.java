package com.lti.training.projectgladiator.service.implementations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.training.projectgladiator.model.Cart;
import com.lti.training.projectgladiator.model.User;
import com.lti.training.projectgladiator.repository.CartRepository;
import com.lti.training.projectgladiator.service.CartService;

@Service
public class CartServiceImpl implements CartService {
	
	@Autowired
	private CartRepository cartRepository;
	
	@Override
	public void addCartForUser(Cart cart, User user) {
		cartRepository.addCartForUser(cart);
	}

	@Override
	public void updateCartForUser(Cart cart, User user) {
		cartRepository.updateCartForUser(cart);
	}

	@Override
	public Cart fetchCartById(long cartId) {
		return cartRepository.fetchById(Cart.class, cartId);
	}

	@Override
	public Cart fetchCartForUser(User user) {
		return cartRepository.fetchCartForUser(user);
	}

}
