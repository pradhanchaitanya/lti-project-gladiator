package com.lti.training.projectgladiator.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.lti.training.projectgladiator.entity.Cart;
import com.lti.training.projectgladiator.entity.User;

public class CartDao extends GenericDao {

	public void addCartForUser(Cart cart, User user) {
		cart.setUser(user);
		upsert(cart);
	}
	
	public Cart fetchCartForUser(User user) {
		EntityManagerFactory entityManagerFactory = null;
		EntityManager entityManager = null;
		
		try {
			entityManagerFactory = Persistence.createEntityManagerFactory("hiboracle");
			entityManager = entityManagerFactory.createEntityManager();
			
			long userId = user.getId();
			
			String jpql = "select c from Cart c where c.user.id = :userId";
			Query query = entityManager.createQuery(jpql);
			query.setParameter("userId", userId);
			return (Cart) query.getResultList().get(0);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			entityManager.close();
			entityManagerFactory.close();
		}
		
		return null;
	}
}
