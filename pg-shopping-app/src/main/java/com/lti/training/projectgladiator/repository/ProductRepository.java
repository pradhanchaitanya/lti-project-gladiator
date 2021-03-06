package com.lti.training.projectgladiator.repository;

import java.util.Set;

import com.lti.training.projectgladiator.exceptions.FailedUpsertException;
import com.lti.training.projectgladiator.exceptions.NoProductFoundException;
import com.lti.training.projectgladiator.model.Cart;
import com.lti.training.projectgladiator.model.Product;
import com.lti.training.projectgladiator.model.Retailer;
import com.lti.training.projectgladiator.model.User;

public interface ProductRepository extends GenericRepository {

	public void addNewProduct(Product product) throws FailedUpsertException;
	public void addProductToCart(Product product, Cart cart, int quantity) throws FailedUpsertException;
	public void removeProductFromCart(Product product, Cart cart, int quantity, boolean shouldRemove) throws NoProductFoundException;
	public Set<Product> fetchProductsByRetailer(Retailer retailer) throws NoProductFoundException;
	public Set<Product> fetchProductsFromCartOfUser(User user) throws NoProductFoundException;
	public Set<Product> fetchProductsByBrand(Product product) throws NoProductFoundException;
	public Set<Product> fetchTopProducts() throws NoProductFoundException;
	Set<Product> fetchProductsForRetailer(Retailer retailer);
}
