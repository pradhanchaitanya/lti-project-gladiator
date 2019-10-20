package com.lti.training.projectgladiator.repository.implementation;

import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lti.training.projectgladiator.exceptions.FailedUpsertException;
import com.lti.training.projectgladiator.exceptions.MultipleCartsFoundException;
import com.lti.training.projectgladiator.exceptions.NoCartFoundException;
import com.lti.training.projectgladiator.model.Cart;
import com.lti.training.projectgladiator.model.User;
import com.lti.training.projectgladiator.repository.CartRepository;

@Repository
public class CartRepositoryImpl extends GenericRepositoryImpl implements CartRepository {
	
	@Transactional
	public void addCartForUser(Cart cart, User user) throws FailedUpsertException {
		upsert(cart);
	}
	
	public Cart fetchCartForUser(User user) throws NoCartFoundException, MultipleCartsFoundException {
		long userId = user.getId();

		String jpql = "select c from Cart c where c.user.id = :userId";
		Query query = entityManager.createQuery(jpql);
		query.setParameter("userId", userId);
		
		Cart cart = null;
		try {
			cart = (Cart) query.getSingleResult();
		} catch (NoResultException e) {
			throw new NoCartFoundException(e);
		} catch (NonUniqueResultException e) {
			throw new MultipleCartsFoundException(e);
		}
		
		return cart;
	}
}
