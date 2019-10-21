package com.lti.training.projectgladiator.repository.implementation;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;

import com.lti.training.projectgladiator.exceptions.MultipleUsersFoundException;
import com.lti.training.projectgladiator.exceptions.NoUserFoundException;
import com.lti.training.projectgladiator.model.Retailer;
import com.lti.training.projectgladiator.repository.RetailerRepository;

public class RetailerRepositoryImpl implements RetailerRepository {

	@Autowired
	private EntityManager entityManager;
	
	@Override
	public Retailer fetchRetailerByEmail(String email) throws NoUserFoundException, MultipleUsersFoundException {
		String jpql = "select r from Retailer r where r.email = :email";
		Query query = entityManager.createQuery(jpql);
		query.setParameter("email", email);
		
		Retailer retailer = null;
		try {
			retailer = (Retailer) query.getSingleResult();
		} catch (NoResultException e) {
			throw new NoUserFoundException(e);
		} catch (NonUniqueResultException e) {
			throw new MultipleUsersFoundException(e);
		}
		
		return retailer;
	}

}
