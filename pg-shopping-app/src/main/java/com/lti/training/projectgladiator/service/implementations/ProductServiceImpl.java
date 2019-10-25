package com.lti.training.projectgladiator.service.implementations;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lti.training.projectgladiator.exceptions.FailedUpsertException;
import com.lti.training.projectgladiator.exceptions.NoProductFoundException;
import com.lti.training.projectgladiator.model.Cart;
import com.lti.training.projectgladiator.model.Product;
import com.lti.training.projectgladiator.model.Retailer;
import com.lti.training.projectgladiator.model.User;
import com.lti.training.projectgladiator.repository.ProductRepository;
import com.lti.training.projectgladiator.service.ProductService;

@Repository
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductRepository productRepository;

	@Override
	public void addNewProduct(Product product) throws FailedUpsertException {
		productRepository.upsert(product);
	}

	@Override
	public void addProductToCart(Product product, Cart cart, int quantity) throws FailedUpsertException {
		productRepository.addProductToCart(product, cart, quantity);
	}
	
	@Override
	public void removeProductFromCart(Product product, Cart cart, int quantity) throws NoProductFoundException {
		productRepository.removeProductFromCart(product, cart, quantity);
	}

	@Override
	public Product fetchProductById(long productId) throws NoProductFoundException {
		return productRepository.fetchById(Product.class, productId);
	}

	@Override
	public Set<Product> fetchProductsByRetailer(Retailer retailer) throws NoProductFoundException {
		return productRepository.fetchProductsByRetailer(retailer);
	}

	@Override
	public Set<Product> fetchProductsFromCartOfUser(User user) throws NoProductFoundException {
		return productRepository.fetchProductsFromCartOfUser(user);
	}

}
