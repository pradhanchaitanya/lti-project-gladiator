package com.lti.training.projectgladiator.service;

import java.util.List;
import java.util.Set;

import com.lti.training.projectgladiator.exceptions.MultipleUsersFoundException;
import com.lti.training.projectgladiator.exceptions.NoUserFoundException;
import com.lti.training.projectgladiator.model.Product;
import com.lti.training.projectgladiator.model.Retailer;

public interface RetailerService {

	void addNewRetailer(Retailer retailer);
	Retailer fetchRetailerById(long retailerId);
	Retailer validateRetailer(String email, String password) throws NoUserFoundException;
	List<Retailer> fetchAllRetailers() throws NoUserFoundException;
	Retailer fetchRetailerByEmail(String email) throws NoUserFoundException, MultipleUsersFoundException;
	void verifyRetailer(long retailerId) throws NoUserFoundException;
	void removeRetailer(long retailerId) throws NoUserFoundException;
	void addNewProduct(Product product);
	Set<Product> fetchProductsForRetailer(Retailer retailer);
}
