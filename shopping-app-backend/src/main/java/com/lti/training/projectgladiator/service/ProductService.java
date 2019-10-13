package com.lti.training.projectgladiator.service;

import java.util.Set;

import com.lti.training.projectgladiator.entity.Cart;
import com.lti.training.projectgladiator.entity.Product;
import com.lti.training.projectgladiator.entity.Retailer;
import com.lti.training.projectgladiator.entity.User;

public interface ProductService {

	void addNewProduct(Product product);
	void addProductToCart(Product product, Cart cart, int quantity);
	Product fetchProductById(long productId);
	Set<Product> fetchProductsByRetailer(Retailer retailer);
	Set<Product> fetchProductsFromCartOfUser(User user);
}
