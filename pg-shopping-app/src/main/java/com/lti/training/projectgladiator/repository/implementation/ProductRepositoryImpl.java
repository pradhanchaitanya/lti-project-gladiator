package com.lti.training.projectgladiator.repository.implementation;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lti.training.projectgladiator.exceptions.FailedUpsertException;
import com.lti.training.projectgladiator.exceptions.NoProductFoundException;
import com.lti.training.projectgladiator.model.Cart;
import com.lti.training.projectgladiator.model.Product;
import com.lti.training.projectgladiator.model.Retailer;
import com.lti.training.projectgladiator.model.User;
import com.lti.training.projectgladiator.model.jointables.CartProduct;
import com.lti.training.projectgladiator.repository.CartRepository;
import com.lti.training.projectgladiator.repository.ProductRepository;

@Repository
public class ProductRepositoryImpl extends GenericRepositoryImpl implements ProductRepository {
	
	@Autowired
	private CartRepository cartRepository;
	
	@Transactional
	public void addProductToCart(Product product, Cart cart, int quantity) throws FailedUpsertException {
		CartProduct cartProduct = new CartProduct();
		cartProduct.setProduct(product);
		cartProduct.setCart(cart);
		cartProduct.setQuantity(quantity);
		
		upsert(cartProduct);
		
		double totalPrice = cart.getTotalPrice();
		cart.setTotalPrice(totalPrice + (quantity * product.getPrice()));
		
		int totalQuantity = cart.getTotalQuantity();
		cart.setTotalQuantity(quantity + totalQuantity);
		
		cartRepository.updateCartForUser(cart);
	}
	
	@Transactional
	public void removeProductFromCart(Product product, Cart cart, int quantity) throws NoProductFoundException {
		String jpql = "select cp from CartProduct cp where cp.cart.id = :cartId";
		Query query = entityManager.createQuery(jpql);
		query.setParameter("cartId", cart.getId());
		
		CartProduct cartProduct = (CartProduct) query.getSingleResult();
		
		double totalPrice = cart.getTotalPrice();
		cart.setTotalPrice(totalPrice - (quantity * product.getPrice()));
		
		int totalQuantity = cart.getTotalQuantity();
		cart.setTotalQuantity(quantity - totalQuantity);
		
		cartRepository.updateCartForUser(cart);
		
		cartProduct.setCart(cart);
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

		String jpql = "select p from Cart c join c.cartProducts cp join cp.product p where c.user.id = :userId";
		Query query = entityManager.createQuery(jpql);
		query.setParameter("userId", userId);
	
		List<Product> products = query.getResultList();
		if (products.size() == 0) {
			throw new NoProductFoundException("No product in your cart");
		}
		
		return new HashSet<>(products);
	}

	@Override
	public Set<Product> fetchProductsByBrand(Product product) throws NoProductFoundException {
		String productBrand = product.getBrand();
		
		String jpql = "select p from Product p where p.category=:category and p.brand =:brand";
		Query query = entityManager.createQuery(jpql);
		query.setParameter("category", product);
		query.setParameter("brand", product);
	
		List<Product> products = query.getResultList();
		if (products.size() == 0) {
			throw new NoProductFoundException("No product in your cart");
		}
		
		return new HashSet<>(products);
	}
	
	@Override
	public Set<Product> fetchSearchResult(Product product) throws NoProductFoundException {
		String productsearch = product.getName();
		String productsearchdes = product.getDescription();

		
		String jpql = "select p from Product p where p.name or p.description = :search";
		Query query = entityManager.createQuery(jpql);
		query.setParameter("search", product);
	
		List<Product> products = query.getResultList();
		if (products.size() == 0) {
			throw new NoProductFoundException("No product in your cart");
		}
		
		return new HashSet<>(products);
	}
	
	@Override
	public Set<Product> fetchTopProducts() throws NoProductFoundException {
		String jpql = "select p from Product p";
		Query query = entityManager.createQuery(jpql);
		
		List<Product> products = query.getResultList();
		return new HashSet<>(products.stream().limit(10).collect(Collectors.toList()));
	}
}
