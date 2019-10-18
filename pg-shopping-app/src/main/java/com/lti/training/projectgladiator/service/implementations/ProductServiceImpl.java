package com.lti.training.projectgladiator.service.implementations;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;

import com.lti.training.projectgladiator.exceptions.FailedUpsertException;
import com.lti.training.projectgladiator.exceptions.NoProductFoundException;
import com.lti.training.projectgladiator.model.Cart;
import com.lti.training.projectgladiator.model.Product;
import com.lti.training.projectgladiator.model.Retailer;
import com.lti.training.projectgladiator.model.User;
import com.lti.training.projectgladiator.repository.ProductRepository;
import com.lti.training.projectgladiator.service.ProductService;

public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductRepository productRepository;

	@Override
	public void addNewProduct(Product product) throws FailedUpsertException {
		// TODO Auto-generated method stub

	}

	@Override
	public void addProductToCart(Product product, Cart cart, int quantity) throws FailedUpsertException {
		// TODO Auto-generated method stub

	}

	@Override
	public Product fetchProductById(long productId) throws NoProductFoundException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Set<Product> fetchProductsByRetailer(Retailer retailer) throws NoProductFoundException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Set<Product> fetchProductsFromCartOfUser(User user) throws NoProductFoundException {
		// TODO Auto-generated method stub
		return null;
	}

}
