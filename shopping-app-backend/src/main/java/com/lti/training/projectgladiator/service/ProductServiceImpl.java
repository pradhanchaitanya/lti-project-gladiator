package com.lti.training.projectgladiator.service;

import java.util.Set;

import com.lti.training.projectgladiator.dao.GenericDao;
import com.lti.training.projectgladiator.dao.ProductDao;
import com.lti.training.projectgladiator.entity.Cart;
import com.lti.training.projectgladiator.entity.Product;
import com.lti.training.projectgladiator.entity.Retailer;
import com.lti.training.projectgladiator.entity.User;

public class ProductServiceImpl implements ProductService {

	@Override
	public void addNewProduct(Product product) {
		GenericDao dao = new GenericDao();
		dao.upsert(product);
	}
	
	@Override
	public void addProductToCart(Product product, Cart cart, int quantity) {
		ProductDao dao = new ProductDao();	
		dao.addProductToCart(product, cart, quantity);
		
		// update cart
		double totalPrice = cart.getTotalPrice();
		cart.setTotalPrice(totalPrice + (quantity * product.getPrice()));
		
		int totalQuantity = cart.getTotalQuantity();
		cart.setTotalQuantity(totalQuantity + quantity);
		
		User user = cart.getUser();
		
		new CartServiceImpl().updateCartForUser(cart, user);
	}

	@Override
	public Product fetchProductById(long productId) {
		GenericDao dao = new GenericDao();
		Product product = (Product) dao.fetchById(Product.class, productId);
		return product;
	}

	@Override
	public Set<Product> fetchProductsByRetailer(Retailer retailer) {
		ProductDao dao = new ProductDao();
		return dao.fetchProductsByRetailer(retailer);
	}

	@Override
	public Set<Product> fetchProductsFromCartOfUser(User user) {
		ProductDao dao = new ProductDao();
		return dao.fetchProductsFromCartOfUser(user);
	}
	
}
