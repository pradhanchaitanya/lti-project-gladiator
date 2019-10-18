package com.lti.training.projectgladiator.repository.implementation;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lti.training.projectgladiator.exceptions.FailedUpsertException;
import com.lti.training.projectgladiator.exceptions.NoProductFoundException;
import com.lti.training.projectgladiator.model.Cart;
import com.lti.training.projectgladiator.model.Product;
import com.lti.training.projectgladiator.model.Retailer;
import com.lti.training.projectgladiator.model.User;
import com.lti.training.projectgladiator.model.jointables.CartProduct;
import com.lti.training.projectgladiator.repository.ProductRepository;

@Repository
public class ProductRepositoryImpl extends GenericRepositoryImpl implements ProductRepository {
	
	@Transactional
	public void addProductToCart(Product product, Cart cart, int quantity) throws FailedUpsertException {
		CartProduct cartProduct = new CartProduct();
		cartProduct.setProduct(product);
		cartProduct.setCart(cart);
		cartProduct.setQuantity(quantity);
		
		upsert(cartProduct);
	}
	
	public Set<Product> fetchProductsByRetailer(Retailer retailer) throws NoProductFoundException {
		long retailerId = retailer.getId();

		String jpql = "select p from Product p where p.retailer.id = :retailerId";
		Query query = entityManager.createQuery(jpql);
		query.setParameter("retailerId", retailerId);
		
		List<Product> products = query.getResultList();
		if (products.size() == 0) {
			throw new NoProductFoundException();
		}
		
		return new HashSet<>(products);
	}
	
	public Set<Product> fetchProductsFromCartOfUser(User user) throws NoProductFoundException {
		long userId = user.getId();

		String jpql = "select p from Product p where p.cartProducts.cart.user.id = :userId";
		Query query = entityManager.createQuery(jpql);
		query.setParameter("userId", userId);
	
		List<Product> products = query.getResultList();
		if (products.size() == 0) {
			throw new NoProductFoundException();
		}
		
		return new HashSet<>(products);
	}
}
