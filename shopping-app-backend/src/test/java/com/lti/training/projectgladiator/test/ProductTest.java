package com.lti.training.projectgladiator.test;

import java.util.Set;

import org.junit.Test;

import com.lti.training.projectgladiator.entity.Cart;
import com.lti.training.projectgladiator.entity.Product;
import com.lti.training.projectgladiator.entity.Retailer;
import com.lti.training.projectgladiator.entity.User;
import com.lti.training.projectgladiator.service.CartServiceImpl;
import com.lti.training.projectgladiator.service.ProductService;
import com.lti.training.projectgladiator.service.ProductServiceImpl;
import com.lti.training.projectgladiator.service.RetailerServiceImpl;
import com.lti.training.projectgladiator.service.UserServiceImpl;

public class ProductTest {

	@Test
	public void addNewProduct() {
		
	}
	
	@Test
	public void fetchProductById() {
		
	}
	
	@Test
	public void fetchProductsByRetailer() {
		ProductService service = new ProductServiceImpl();
		
		Retailer retailer = new RetailerServiceImpl().fetchRetailerById(23);
		
		Set<Product> products = service.fetchProductsByRetailer(retailer);
		products.forEach(p -> System.out.println(p.getName()));
	}
	
	@Test
	public void addProductToCart() {
		ProductService service = new ProductServiceImpl();
		
		Product product = service.fetchProductById(72);
		
		User user = new UserServiceImpl().fetchUserById(102);
		
		Cart cart = new CartServiceImpl().fetchCartForUser(user);
		
		service.addProductToCart(product, cart, 3);
	}
}
