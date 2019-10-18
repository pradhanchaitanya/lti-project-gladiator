package com.lti.training.projectgladiator.service;

import java.util.Set;

import com.lti.training.projectgladiator.exceptions.FailedUpsertException;
import com.lti.training.projectgladiator.exceptions.NoProductFoundException;
import com.lti.training.projectgladiator.model.Cart;
import com.lti.training.projectgladiator.model.Product;
import com.lti.training.projectgladiator.model.Retailer;
import com.lti.training.projectgladiator.model.User;

public interface ProductService {

	void addNewProduct(Product product) throws FailedUpsertException;
	void addProductToCart(Product product, Cart cart, int quantity) throws FailedUpsertException;
	Product fetchProductById(long productId) throws NoProductFoundException;
	Set<Product> fetchProductsByRetailer(Retailer retailer) throws NoProductFoundException;
	Set<Product> fetchProductsFromCartOfUser(User user) throws NoProductFoundException;
}
