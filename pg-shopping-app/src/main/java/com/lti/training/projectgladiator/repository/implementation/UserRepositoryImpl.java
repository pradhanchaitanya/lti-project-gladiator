package com.lti.training.projectgladiator.repository.implementation;

import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.lti.training.projectgladiator.exceptions.MultipleUsersFoundException;
import com.lti.training.projectgladiator.exceptions.NoUserFoundException;
import com.lti.training.projectgladiator.model.User;
import com.lti.training.projectgladiator.repository.UserRepository;

@Repository
public class UserRepositoryImpl extends GenericRepositoryImpl implements UserRepository {

	public User fetchUserByEmail(String email) throws NoUserFoundException, MultipleUsersFoundException {
		String jpql = "select u from User u where u.email = :email";
		Query query = entityManager.createQuery(jpql);
		query.setParameter("email", email);
		
		User user = null;
		try {
			user = (User) query.getSingleResult();
		} catch (NoResultException e) {
			throw new NoUserFoundException(e);
		} catch (NonUniqueResultException e) {
			throw new MultipleUsersFoundException(e);
		}
		
		return user;
	}
}
