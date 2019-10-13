package com.lti.training.projectgladiator.dao;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.lti.training.projectgladiator.entity.Product;
import com.lti.training.projectgladiator.entity.Retailer;
import com.lti.training.projectgladiator.entity.User;

public class ProductDao extends GenericDao {

	public Set<Product> fetchProductsByRetailer(Retailer retailer) {
		EntityManagerFactory entityManagerFactory = null;
		EntityManager entityManager = null;
		
		try {
			entityManagerFactory = Persistence.createEntityManagerFactory("hiboracle");
			entityManager = entityManagerFactory.createEntityManager();
			
			long retailerId = retailer.getId();
			
			String jpql = "select p from Product p where p.retailer.id = :retailerId";
			Query query = entityManager.createQuery(jpql);
			query.setParameter("retailerId", retailerId);
			return new HashSet<Product>(query.getResultList());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			entityManager.close();
			entityManagerFactory.close();
		}
		
		return null;
	}
	
	public Set<Product> fetchProductsFromCartOfUser(User user) {
		EntityManagerFactory entityManagerFactory = null;
		EntityManager entityManager = null;
		
		try {
			entityManagerFactory = Persistence.createEntityManagerFactory("hiboracle");
			entityManager = entityManagerFactory.createEntityManager();
			
			long userId = user.getId();
			
			String jpql = "select p from Product p where p.cartProducts.cart.user.id = :userId";
			Query query = entityManager.createQuery(jpql);
			query.setParameter("userId", userId);
			return new HashSet<Product>(query.getResultList());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			entityManager.close();
			entityManagerFactory.close();
		}
		
		return null;
	}
}
