package com.lti.training.projectgladiator.repository.implementation;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lti.training.projectgladiator.exceptions.NoUserFoundException;
import com.lti.training.projectgladiator.model.Cart;
import com.lti.training.projectgladiator.model.Order;
import com.lti.training.projectgladiator.model.Product;
import com.lti.training.projectgladiator.model.User;
import com.lti.training.projectgladiator.repository.OrderRepository;
import com.lti.training.projectgladiator.repository.ProductRepository;

@Repository
@Transactional
public class OrderRepositoryImpl extends GenericRepositoryImpl implements OrderRepository {
	
	@PersistenceContext
	private EntityManager entityManager;
	
	@Autowired
	private ProductRepository productRepository;

	@Override
	public void addOrder(Order order) {
		upsert(order);
		
		Cart cart = order.getCart();
		User user = cart.getUser();
		
		Set<Product> products = productRepository.fetchProductsFromCartOfUser(user);
		products.forEach(product -> productRepository.removeProductFromCart(product, cart, 1));
		entityManager.remove(entityManager.contains(cart) ? cart : entityManager.merge(cart));
	}

	@Override
	public Set<Order> fetchOrdersForUser(User user) throws NoUserFoundException {
		long userId = user.getId();
		
		String jpql = "select o from Order o where o.cart.user.id = :userId";
		Query query = entityManager.createQuery(jpql);
		query.setParameter("userId", userId);
		
		return new HashSet<>(query.getResultList());
	}
}
