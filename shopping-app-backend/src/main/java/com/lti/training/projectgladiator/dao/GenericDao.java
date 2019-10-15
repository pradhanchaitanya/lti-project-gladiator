package com.lti.training.projectgladiator.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

/*
 * Data Access Object class for interacting with the DB
 * Can insert, update and fetch objects of any entity
 */

public class GenericDao {

	/*
	 * @param Object obj
	 * Generic method to insert/update objects in the DB
	 */
	public void upsert(Object obj) {
		EntityManagerFactory entityManagerFactory = null;
		EntityManager entityManager = null;
		
		try {
			entityManagerFactory = Persistence.createEntityManagerFactory("hiboracle");
			entityManager = entityManagerFactory.createEntityManager();
			
			EntityTransaction transaction = entityManager.getTransaction();
			transaction.begin();
			entityManager.merge(obj);
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			entityManager.close();
			entityManagerFactory.close();
		}
	}
	
	/*
	 * @param Class clazz
	 * @param Object primaryKey
	 * Generic method to retrieve objects based on Primary Key
	 */
	public Object fetchById(Class clazz, Object primaryKey) {
		EntityManagerFactory entityManagerFactory = null;
		EntityManager entityManager = null;
		
		try {
			entityManagerFactory = Persistence.createEntityManagerFactory("hiboracle");
			entityManager = entityManagerFactory.createEntityManager();
			
			return entityManager.find(clazz, primaryKey);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			entityManager.close();
			entityManagerFactory.close();
		}
	}
}
