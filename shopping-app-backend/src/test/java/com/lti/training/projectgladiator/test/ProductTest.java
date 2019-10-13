package com.lti.training.projectgladiator.test;

import java.util.Set;

import org.junit.Test;

import com.lti.training.projectgladiator.entity.Product;
import com.lti.training.projectgladiator.entity.Retailer;
import com.lti.training.projectgladiator.service.ProductService;
import com.lti.training.projectgladiator.service.ProductServiceImpl;
import com.lti.training.projectgladiator.service.RetailerServiceImpl;

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
}
