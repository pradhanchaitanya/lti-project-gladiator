package com.lti.training.projectgladiator.repository.implementation;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.lti.training.projectgladiator.exceptions.MultipleUsersFoundException;
import com.lti.training.projectgladiator.exceptions.NoUserFoundException;
import com.lti.training.projectgladiator.model.Admin;
import com.lti.training.projectgladiator.model.User;
import com.lti.training.projectgladiator.repository.AdminRepository;

@Repository
public class AdminRepositoryImpl extends GenericRepositoryImpl implements AdminRepository {

	@PersistenceContext
	private EntityManager entityManager;
	
	@Override
	public Admin fetchAdminByUsername(String name) throws NoUserFoundException, MultipleUsersFoundException {
		String jpql = "select a from Admin a where a.username = :username";
		Query query = entityManager.createQuery(jpql);
		query.setParameter("username", name);
		
		Admin admin = /*(User) query.getResultList().get(0); */ null;
		
		try {
			admin = (Admin) query.getSingleResult();
		} catch (NoResultException e) {
			throw new NoUserFoundException(e);
		} catch (NonUniqueResultException e) {
			throw new MultipleUsersFoundException(e);
		}
		
		return admin;
	}
	

}
