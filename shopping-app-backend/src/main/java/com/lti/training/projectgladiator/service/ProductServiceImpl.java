package com.lti.training.projectgladiator.service;

import java.util.Set;

import com.lti.training.projectgladiator.dao.GenericDao;
import com.lti.training.projectgladiator.dao.ProductDao;
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
