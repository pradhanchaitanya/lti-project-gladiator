package com.lti.training.projectgladiator.repository.implementation;

import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lti.training.projectgladiator.exceptions.FailedUpsertException;
import com.lti.training.projectgladiator.exceptions.NoProductFoundException;
import com.lti.training.projectgladiator.model.Product;
import com.lti.training.projectgladiator.repository.GenericRepository;

@Repository
public class GenericRepositoryImpl implements GenericRepository {

	@PersistenceContext
	protected EntityManager entityManager;
	
	@Transactional
	public void upsert(Object object) {
		try {
			entityManager.merge(object);
		} catch (Exception e) {
			throw new FailedUpsertException(e.getMessage(), e);
		}
	}
	
	public <T> T fetchById(Class<T> clazz, Object primaryKey) {
		return entityManager.find(clazz, primaryKey);
	}

	@Override
	public Set<Product> fetchSearchResult(Product product) throws NoProductFoundException {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
