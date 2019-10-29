package com.lti.training.projectgladiator.repository.implementation;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lti.training.projectgladiator.exceptions.MultipleUsersFoundException;
import com.lti.training.projectgladiator.exceptions.NoUserFoundException;
import com.lti.training.projectgladiator.model.Retailer;
import com.lti.training.projectgladiator.repository.RetailerRepository;

@Repository
@Transactional
public class RetailerRepositoryImpl extends GenericRepositoryImpl implements RetailerRepository {

	@PersistenceContext
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
	
	@Override
	public List<Retailer> fetchAllRetailers() throws NoUserFoundException {
		String jpql = "select r from Retailer r";
		Query query = entityManager.createQuery(jpql);
		
		List<Retailer> retailers = query.getResultList();
		if (retailers.size() == 0) {
			throw new NoUserFoundException("No retailers found");
		}
		
		return retailers;
	}
	
	@Override
	@Transactional
	public void removeRetailer(Retailer retailer) throws NoUserFoundException {
		entityManager.remove(entityManager.contains(retailer) ? retailer : entityManager.merge(retailer));
	}

}
