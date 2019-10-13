package com.lti.training.projectgladiator.service;

import com.lti.training.projectgladiator.dao.CartDao;
import com.lti.training.projectgladiator.dao.GenericDao;
import com.lti.training.projectgladiator.entity.Cart;
import com.lti.training.projectgladiator.entity.User;

public class CartServiceImpl implements CartService {

	@Override
	public void addCartForUser(Cart cart, User user) {
		CartDao dao = new CartDao();
		dao.addCartForUser(cart, user);
	}
	
	@Override
	public void updateCartForUser(Cart cart, User user) {
		addCartForUser(cart, user);
	}

	@Override
	public Cart fetchCartById(long cartId) {
		GenericDao dao = new GenericDao();
		return (Cart) dao.fetchById(Cart.class, cartId);
	}

	@Override
	public Cart fetchCartForUser(User user) {
		CartDao dao = new CartDao();
		Cart cart = (Cart) dao.fetchCartForUser(user);
		
		if (cart == null) {
			Cart newCart = new Cart();
			newCart.setUser(user);
			user.setCart(newCart);
			addCartForUser(newCart, user);
			return newCart;
		}
		
		return cart;
	}

	
}
